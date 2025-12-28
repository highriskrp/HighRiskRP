if Config.Framework == "qb" or Config.Framework == "qbx" then

    Config.Core = exports['qb-core']:GetCoreObject()
    if Config.Core == nil then
        TriggerEvent("QBCore:GetObject", function(obj) Config.Core = obj end)
    end

    --- Displays a framework notification.
    --- @param text string The text to display in the notification.
    --- @param notifType string The type of notification (e.g., "success", "error", "primary").
    --- @param length number The length of time the notification should be displayed (in milliseconds).
    function FreamworkNotification(text, notifType, length)
        notifType = notifType or "success"
        length = length or 5000
        Config.Core.Functions.Notify(text, notifType, length)
    end

    --- Gets the player's job information.
    --- @return table
    function GetInventory()
        return Config.Core.Functions.GetPlayerData().items
    end

    function GetClosestPlayer()
        return Config.Core.Functions.GetClosestPlayer()
    end

    local function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
        local nearbyEntities = {}
        if coords then
            coords = vector3(coords.x, coords.y, coords.z)
        else
            local playerPed = PlayerPedId()
            coords = GetEntityCoords(playerPed)
        end
        for k, entity in pairs(entities) do
            local distance = #(coords - GetEntityCoords(entity))
            if distance <= maxDistance then
                nearbyEntities[#nearbyEntities + 1] = isPlayerEntities and k or entity
            end
        end
        return nearbyEntities
    end

    function GetVehiclesInArea(pos, maxRadius)
        return EnumerateEntitiesWithinDistance(GetGamePool('CVehicle'), false, pos, maxRadius)
    end

    function GetClosestVehicle(coord)
        return Config.Core.Functions.GetClosestVehicle()
    end

    function GetPlayersInArea(coord, maxRadius)
        return Config.Core.Functions.GetPlayersFromCoords(coord, maxRadius)
    end

    function GetPlayerBankBalance()
        local money = 0
        local PlayerData = Config.Core.Functions.GetPlayerData()
        if PlayerData then
            money = PlayerData.money["bank"]
        end
        return money
    end

    function ApplyVehicleMods(vehicle, vehicleData)
        Config.Core.Functions.SetVehicleProperties(vehicle, vehicleData.vehMods)
        GiveKeyCar(vehicle)
        SetFuel(vehicle, vehicleData?.fuel or 100.0)
    end

    function VehicleCreate(model, coords, vehicleData)
        local createCar = CreateVehicle(model, coords.x, coords.y, coords.z, 0.0, true, false)
        SetVehicleOnGroundProperly(createCar)
        ApplyVehicleMods(createCar, vehicleData)
        SetModelAsNoLongerNeeded(model)
        return createCar
    end

    PlayerData = {}
    Cuffed = false

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function(data)
        Debugprint('QBCore:Client:OnPlayerLoaded')
        Wait(5000)
        local PlayerData = Config.Core.Functions.GetPlayerData()
        if PlayerData ~= nil then
            if PlayerData.job ~= nil then
                JobInfo.job = PlayerData.job.name
                JobInfo.job_grade = PlayerData.job.grade.level and PlayerData.job.grade.level or PlayerData.job.grade
                JobInfo.job_label = PlayerData.job.label
                JobInfo.job_grade_label = PlayerData.job.grade.name and PlayerData.job.grade.name or PlayerData.job.grade
                JobInfo.onDuty = PlayerData.job.onduty
                JobUpdate()
            end
            Wait(1000)
            if Config.AutoOpen then
                Debugprint('Config.AutoOpen OnPlayerLoaded')
                ForceLoadPhone()
            end
        end
    end)

    RegisterNetEvent('QBCore:Client:OnJobUpdate', function(jobdata)
        if jobdata ~= nil then
            JobInfo.job = jobdata.name
            JobInfo.job_grade = jobdata.grade.level and jobdata.grade.level or jobdata.grade
            JobInfo.job_label = jobdata.label
            JobInfo.job_grade_label = jobdata.grade.name and jobdata.grade.name or jobdata.grade
            JobInfo.onDuty = jobdata.onduty
            JobUpdate()
        end
    end)

    RegisterNetEvent('QBCore:Client:SetDuty', function(onDuty) 
        JobInfo.onDuty = onDuty
        JobUpdate()
    end)

    RegisterNetEvent('QBCore:Client:OnPlayerUnload', function(jobdata)
        Debugprint('QBCore:Client:OnPlayerUnload')
        PlayerData = {}
        JobInfo.job = ""
        JobInfo.job_grade = 0
        JobInfo.job_label = ""
        JobInfo.job_grade_label = ""
        JobInfo.onDuty = false
        TriggerServerEvent("gksphone:server:playerDropped")
    end)

    local function BlockPhone()
        if PhoneOpen == true then
            OpenPhone()
        end
        PhoneOpenBlock = true
        PhoneBlockReason = "You can't use the phone while dead, handcuffed or in last stand."
        if Incall then
            EndPhoneCall()
        end
        local soundId = tostring(CurrentPlayerId)
        local id = "music" .. soundId
        if MusicData and MusicData[id] then
            TriggerServerEvent('gksphone:server:musicListen', false, false, "pause", false)
        end
    end

    RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
        PlayerData = val
        if not Config.allowPhoneWhileCuffed then
            if not Config.allowPhoneWhileCuffed and PlayerData.metadata["ishandcuffed"] then
                BlockPhone()
            elseif not Config.allowPhoneWhileDead and (PlayerData.metadata["isdead"] or PlayerData.metadata["inlaststand"]) then
                BlockPhone()
            else
                PhoneOpenBlock = false
                PhoneBlockReason = ""
            end
        end
    end)

    AddEventHandler('onResourceStart', function(resource)
        if resource == GetCurrentResourceName() then
            PlayerData = Config.Core.Functions.GetPlayerData()
            if PlayerData ~= nil then
                if PlayerData.job ~= nil then
                    JobInfo.job = PlayerData.job.name
                    JobInfo.job_grade = PlayerData.job.grade.level and PlayerData.job.grade.level or PlayerData.job.grade
                    JobInfo.job_label = PlayerData.job.label
                    JobInfo.job_grade_label = PlayerData.job.grade.name and PlayerData.job.grade.name or PlayerData.job.grade
                    JobInfo.onDuty = PlayerData.job.onduty
                    Wait(5000)
                    JobUpdate()
                end
            end
            TriggerServerEvent("gksphone:server:restartphone")
            Wait(100)
            if Config.AutoOpen then
                Debugprint('Config.AutoOpen OnPlayerLoaded')
                ForceLoadPhone()
            end
        end
    end)
end
