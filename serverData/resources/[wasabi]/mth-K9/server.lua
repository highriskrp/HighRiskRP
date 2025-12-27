if Config.UseCommand then
    RegisterCommand('k9', function(source, args, rawCommand)
        local QBCore = exports['qb-core']:GetCoreObject()
        local Player = QBCore.Functions.GetPlayer(source)
        local allowed = false
        if Player and Player.PlayerData and Player.PlayerData.job and Config.AllowedJobs then
            for _, job in ipairs(Config.AllowedJobs) do
                if Player.PlayerData.job.name == job then
                    allowed = true
                    break
                end
            end
        end
        if allowed then
            TriggerClientEvent('mth-k9:openMenu', source)
        else
            TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'You are not allowed to use the K9 menu!' } })
        end
    end, Config.AcePermissions)
end

RegisterNetEvent('mth-k9:server:spawn')
AddEventHandler('mth-k9:server:spawn', function(model, pos)
    local source = source
    local ped = CreatePed(0, model, pos.x, pos.y, pos.z, 0.0, true, true)
    while not DoesEntityExist(ped) do
        Wait(50)
    end
    print(ped)
    print(NetworkGetNetworkIdFromEntity(ped))
    TriggerClientEvent('mth-k9:client:spawn', source, NetworkGetNetworkIdFromEntity(ped))
end)
