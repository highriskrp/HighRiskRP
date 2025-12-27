--- GKSPHONE HOUSE APP ---
-- Made by GKSHOP  | https://discord.gg/XUck63E
-- Version: 2.0.0

RegisterNuiCallback("gksphone:home:fetchHouseData", function (data, cb)
    if Config.loafHouse then
        local ownedHouses = exports.loaf_housing:GetOwnedHouses()
        Debugprint('loafHouse ownedHouses', ownedHouses)
        cb(ownedHouses)
    elseif Config.bcs_housing then
        local ownedHouses = exports.bcs_housing:GetOwnedHomes()
        Debugprint('bcs_housing ownedHouses', ownedHouses)
        cb(ownedHouses)
    elseif Config.QsHousing then
        local CallbackTrigger
        if Config.Framework == "qb" then
            CallbackTrigger = Config.Core.Functions.TriggerCallback
        elseif Config.Framework == "esx" then
            CallbackTrigger = Config.Core.TriggerServerCallback
        end
        if CallbackTrigger then
            CallbackTrigger('qb-phone:server:GetPlayerHouses', function(result)
                Debugprint('get house qs-housing', result)
                for i = 1, #result do
                    result[i].transfer = false
                end
                cb(result)
            end)
        end
    elseif GetResourceState('esx_property') == 'started' then
        local GetHouses = exports["esx_property"]:GetProperties()
        Debugprint('esx_property GetHouses', GetHouses)
        Debugprint('esx_property identifier', PlayerData.identifier)
        local PlayerProperties = {}
        for i=1, #GetHouses do
            if GetHouses[i].Owned and GetHouses[i].Owner == PlayerData.identifier then
                GetHouses[i].id = i
                PlayerProperties[#PlayerProperties + 1] = GetHouses[i]
            end
        end
        Debugprint('esx_property PlayerProperties', PlayerProperties)
        cb(PlayerProperties)
    elseif GetResourceState('qb-houses') == 'started' then
        Config.Core.Functions.TriggerCallback('qb-phone:server:GetPlayerHouses', function(result)
            Debugprint('qb-phone:server:GetPlayerHouses', result)
            cb(result)
        end)
    else
        cb({})
    end
end)

RegisterNUICallback('gksphone:home:fetchKeysData', function(data, cb)
    if Config.loafHouse then
        local keys = exports.loaf_keysystem:GetKeys()
        local properties = {}
        for _, v in pairs(keys) do
            local _, _, propertyId = v.key_id:find("housing_key_(.*)_")
            if propertyId then
                properties[tonumber(propertyId)] = {HouseData = {adress = v.key_data.name}, id = tonumber(propertyId)}
            end
        end
        Debugprint('loafHouse properties', properties)
        cb(properties)
    elseif Config.bcs_housing then
        local houses = exports.bcs_housing:GetOwnedHomeKeys()
        Debugprint('bcs_housing houses', houses)
        local keys = {}
        for i = 1, #houses do
            houses[i].label = houses[i].properties.name
            houses[i].name = houses[i].identifier
            houses[i].tier = 1
            houses[i].coords = houses[i].entry
            houses[i].keyholders = exports.bcs_housing:GetKeyHolders(houses[i].identifier)
            keys[#keys + 1] = {
                HouseData = houses[i]
            }
        end
        Debugprint('bcs_housing keys', keys)
        cb(keys)
    elseif Config.QsHousing then
        local CallbackTrigger
        if Config.Framework == "qb" then
            CallbackTrigger = Config.Core.Functions.TriggerCallback
        elseif Config.Framework == "esx" then
            CallbackTrigger = Config.Core.TriggerServerCallback
        end
        CallbackTrigger('qb-phone:server:GetHouseKeys', function(result)
            Debugprint('get key qs-housing', result)
            cb(result)
        end)
    elseif GetResourceState('esx_property') == 'started' then
        local GetHouses = exports["esx_property"]:GetProperties()
        Debugprint('esx_property GetHouses', GetHouses)
        Debugprint('esx_property identifier', PlayerData.identifier)
        local PlayerProperties = {}
        for i=1, #GetHouses do
            if GetHouses[i].Keys and GetHouses[i].Keys[PlayerData.identifier] then
                GetHouses[i].id = i
                GetHouses[i].label = GetHouses[i].Name
                PlayerProperties[#PlayerProperties + 1] = {HouseData = GetHouses[i]}
            end
        end
        Debugprint('esx_property PlayerProperties', PlayerProperties)
        cb(PlayerProperties)
    elseif GetResourceState('qb-houses') == 'started' then
        Config.Core.Functions.TriggerCallback('qb-phone:server:GetHouseKeys', function(result)
            Debugprint('qb-phone:server:GetHouseKeys', result)
            cb(result)
        end)
    else
        cb({})
    end
end)

RegisterNUICallback('gksphone:home:transferHouse', function(data, cb)
    if Config.loafHouse then
        Debugprint('loafHouse transfer', data)
        TriggerServerEvent('gksphone:server:loafhouseTransfer', data.house, data.phoneNumber)
    elseif Config.bcs_housing then
        Debugprint('bcs_housing transfer', data)
        local CallbackTrigger
        if Config.Framework == "qb" then
            CallbackTrigger = Config.Core.Functions.TriggerCallback
        elseif Config.Framework == "esx" then
            CallbackTrigger = Config.Core.TriggerServerCallback
        end
        CallbackTrigger('gksphone:server:getCizitinIDSource', function(citizenid, source)
            if citizenid and source then
                local srcid = source
                TriggerServerEvent('Housing:server:TransferOwner', data.house.identifier, tonumber(srcid))
            end
        end, data.phoneNumber)
    elseif Config.QsHousing then
        cb(false)
        return
    elseif GetResourceState('qb-houses') == 'started' then
        Debugprint('qb-phone:server:TransferHouse', data)
        CallBackServerTrigger('gksphone:server:getCizitinIDSource', function(citizenid)
            Debugprint("TransferHouse Qb-Core",citizenid )
            if citizenid then
                local TransferedCid = citizenid
                CreateThread(function()
                    Config.Core.Functions.TriggerCallback('qb-phone:server:TransferCid', function(transfer)
                        if transfer then
                            local notify = {
                                title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
                                message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOME_TRANSFERSUCCESS"), -- The message of the notification
                                icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
                            }
                            exports["gksphone"]:Notification(notify)
                        end
                    end, TransferedCid, data.house)
                end)
            end
        end, data.phoneNumber)
    end
    cb('ok')
end)

RegisterNetEvent('gksphone:client:transferHouse', function (plyaerid, proptyid)
    Debugprint('gksphone:client:transferHouse', plyaerid, proptyid)
    exports.loaf_housing:TransferProperty(plyaerid, proptyid)
    local notify = {
        title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
        message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOME_TRANSFERSUCCESS"), -- The message of the notification
        icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
    }

    exports["gksphone"]:Notification(notify)
end)

RegisterNUICallback('gksphone:home:houseLocation', function(data, cb)
    if Config.loafHouse then
        exports.loaf_housing:MarkProperty(data.id)
        local notify = {
            title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
            message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_SETGPS"), -- The message of the notification
            icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
        }

        -- Trigger the notification using the gksphone exports
        exports["gksphone"]:Notification(notify)

        Debugprint('Set waypoint for LOAF House')
    elseif Config.bcs_housing then
        exports.bcs_housing:SetWaypoint(data.HouseData.name)
        local notify = {
            title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
            message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_SETGPS"), -- The message of the notification
            icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
        }

        -- Trigger the notification using the gksphone exports
        exports["gksphone"]:Notification(notify)
        Debugprint('Set waypoint for BCS House')
    elseif Config.QsHousing then
        SetNewWaypoint(data.HouseData.coords.enter.x, data.HouseData.coords.enter.y)
        local notify = {
            title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
            message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_SETGPS"), -- The message of the notification
            icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
        }

        -- Trigger the notification using the gksphone exports
        exports["gksphone"]:Notification(notify)
        Debugprint('Set waypoint for other house')
    elseif GetResourceState('esx_property') == 'started' then
        SetNewWaypoint(data.HouseData.Entrance.x, data.HouseData.Entrance.y)
        local notify = {
            title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
            message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_SETGPS"), -- The message of the notification
            icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
        }

        -- Trigger the notification using the gksphone exports
        exports["gksphone"]:Notification(notify)
        Debugprint('Set waypoint for other house')
    elseif GetResourceState('qb-houses') == 'started' then
        SetNewWaypoint(data.HouseData.coords.enter.x, data.HouseData.coords.enter.y)
        local notify = {
            title = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_TITLE"), -- The title of the notification
            message = _T(LastItemData?.info?.phoneLang, "HouseAPP.APP_HOUSE_SETGPS"), -- The message of the notification
            icon = "/html/img/icons/house.png", -- The icon to be displayed with the notification
        }

        -- Trigger the notification using the gksphone exports
        exports["gksphone"]:Notification(notify)
        Debugprint('Set waypoint for other house')
    end
    cb('ok')
end)