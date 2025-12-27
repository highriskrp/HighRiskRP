Config = Config or {}

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-fraudnpc:sellItem", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = data.item
    local itemInfo = Config.SellItems[item]

    if not itemInfo then return end

    if Player.Functions.GetItemByName(item) then
        Player.Functions.RemoveItem(item, 1)
        Player.Functions.AddMoney("cash", itemInfo.price, "fraud-sale")

        TriggerClientEvent("QBCore:Notify", src, "You sold a " .. itemInfo.label .. " for $" .. itemInfo.price, "success")
    else
        TriggerClientEvent("QBCore:Notify", src, "You don’t have a " .. itemInfo.label, "error")
    end
end)
