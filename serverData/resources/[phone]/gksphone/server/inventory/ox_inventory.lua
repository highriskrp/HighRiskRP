if not Config.OxInvetory then return end
print('[GKSPHONE] OxInventory Loaded')

-- Sets the metadata of an item for a player.
--- @param source number The player's source ID.
--- @param item table The item to set the metadata for.
--- @param data table The metadata to set.
--- @return boolean True if the metadata was set successfully, false otherwise.
function SetItemData(source, item, data)
    local src = source
    local Player = GetIdentifier(src)
    if Player then
        exports.ox_inventory:SetMetadata(src, item.slot, data)
        return true
    end
    return false
end

--- Updates the metadata of an item for a player based on the provided datatype and data.
--- @param source number The player's source ID.
--- @param item table The item to update the metadata for.
--- @param datatype string The type of metadata to update.
--- @param data any The new data to set for the specified metadata type.
function UpdateItemData(source, item, datatype, data)
    local src = source
    local metadata = item.metadata or item.info
    metadata[datatype] = data
    exports.ox_inventory:SetMetadata(src, item.slot, metadata)
end

--- Searches the player's inventory for the specified item.
--- @param source number The player's source ID.
--- @return table item data if found, an empty table otherwise.
function SearchPhoneItems(source)
    local src = source
    local Player = GetIdentifier(src)
    local itemData = {}
    if Player then
        for k, _ in pairs(Config.ItemName) do
            itemData = exports.ox_inventory:Search(src, 'slots', k)
            if #itemData > 0 then
                break
            end
        end
        if #itemData > 0 then
            return itemData
        end
    end
    return itemData
end

-- Powerbank Item Use Event
if ChargeOn then
    for _, value in ipairs(Config.ChargeItems) do
        exports(value, function(event, item, inventory, slot, data)
            if event == 'usingItem' then
                local src = inventory.id
                local isCharging = Player(src).state.phoneIsCharging
                if not isCharging then
                    TriggerClientEvent('gksphone:client:powerbank', src)
                    exports.ox_inventory:RemoveItem(src, item, 1, nil, slot)
                end
            end
        end)
    end
end