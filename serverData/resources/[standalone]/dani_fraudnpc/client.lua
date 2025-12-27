print("^2[FraudNPC] Config Loaded?", Config ~= nil)
print("^2[FraudNPC] NPCLocation:", Config and Config.NPCLocation or "MISSING")

Config = Config or {}

local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    local pedModel = `cs_bankman` -- Bank manager NPC
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do Wait(10) end

    local npc = CreatePed(0, pedModel, Config.NPCLocation.x, Config.NPCLocation.y, Config.NPCLocation.z, Config.NPCLocation.w, false, true)
    SetEntityInvincible(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)

    exports['qb-target']:AddTargetEntity(npc, {
        options = {
            {
                type = "client",
                event = "qb-fraudnpc:openMenu",
                icon = "fas fa-money-check-alt",
                label = "Sell Fraudulent Items"
            }
        },
        distance = 2.5
    })
end)

RegisterNetEvent("qb-fraudnpc:openMenu", function()
    local menu = {
        {
            header = "💰 Fraud Dealer",
            isMenuHeader = true
        }
    }

    for item, data in pairs(Config.SellItems) do
        menu[#menu+1] = {
            header = data.label .. " - $" .. data.price,
            txt = "Sell your " .. data.label,
            params = {
                isServer = true,
                event = "qb-fraudnpc:sellItem",
                args = { item = item }
            }
        }
    end

    exports['qb-menu']:openMenu(menu)
end)
