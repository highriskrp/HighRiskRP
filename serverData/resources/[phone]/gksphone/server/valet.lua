-- VALE --
--- GKSPHONE VALET APP (server) ---
-- Made by GKSHOP  | https://discord.gg/XUck63E
-- Version: 2.1.1


function IsVehicleOut(plate)
    local vehicles = GetAllVehicles()
    if not vehicles then return false end
    if type(vehicles) == "table" then
        for _, vehicle in pairs(vehicles) do
            if DoesEntityExist(vehicle) then
                local plateText = GetVehicleNumberPlateText(vehicle)
                plateText = plateText:gsub("%s", "")
                plate = plate:gsub("%s", "")
                if plateText == plate then
                    return true, vehicle
                end
            end
        end
    end
    return false
end

CallBackRegisterServer('gksphone:server:vale:getVehicles', function(source, cb, appname)
    local xPlayer = GetIdentifier(source)
    if not xPlayer then return; end
    local owner = xPlayer
    local variable = GetCharacterAllVehicles(owner, appname)
    Debugprint("gksphone:server:vale:getVehicles | Total vehicles: " .. #variable .. " | CitizenID: " .. owner)
    cb(variable)
end)

CallBackRegisterServer("gksphone:server:vale:vehichlepoint", function(source, cb, plate)
    local check, vehicle = IsVehicleOut(plate)
    if check and vehicle then
        local vehicleCoords = GetEntityCoords(vehicle)
        local netId = NetworkGetNetworkIdFromEntity(vehicle)
        cb(true, vehicleCoords, netId)
    else
        cb(false)
    end
end)

CallBackRegisterServer("gksphone:server:vale:vehiclebring", function(source, cb, plate, coords, modelType)
    local vehicle = IsVehicleOut(plate)
    if (vehicle == false) then
        modelType = modelType or "automobile"
        local xPlayer = GetIdentifier(source)
        if not xPlayer then cb(false) end
        local citizenid = xPlayer
        local BankMoney = GetBankBalance(source)
        local price = Config.ValePrice
        if price > BankMoney then
            Debugprint("gksphone:server:vale:vehiclebring | Not enough money | CitizenID: " .. citizenid)
            cb("nomoney")
            return
        end
        local getVeh = GetVehicle(citizenid, plate)

        if getVeh == nil then
            Debugprint("gksphone:server:vale:vehiclebring | Vehicle not found | CitizenID: " .. citizenid .. " | Plate: " .. plate)
            cb("carnotfound")
            return
        elseif getVeh == "carimpounded" or getVeh == "carnotingarage" then
            Debugprint("gksphone:server:vale:vehiclebring | Vehicle not in garage | CitizenID: " .. citizenid .. " | Plate: " .. plate)
            cb(getVeh)
            return
        end

        RemoveBankMoney(source, Config.ValePrice)
        if Config.ServerSideSpawnVehicle then
            local createdVehicle = VehicleSpawn(source, getVeh.hash, coords, coords.h, modelType)
            if not createdVehicle then
                AddBankMoney(source, Config.ValePrice)
                Debugprint("gksphone:server:vale:vehiclebring | Failed to create vehicle", source, citizenid)
                cb("carnotfound")
                return
            end
            Wait(1000)
            getVeh.vehNetId = NetworkGetNetworkIdFromEntity(createdVehicle)
            SetEntityOrphanMode(createdVehicle, 2)
            if Config.ValeNPC then
                coords.x = coords.x + 1.0
                coords.y = coords.y + 1.0
                coords.z = coords.z + 1.0
                local valePed = SpawnPedInsideVehicle(Config.ValeNPCModel, coords, createdVehicle)
                if not valePed then
                    AddBankMoney(source, Config.ValePrice)
                    DeleteEntity(createdVehicle)
                    Debugprint("gksphone:server:vale:vehiclebring | Failed to create ped", source, citizenid)
                    cb("carnotfound")
                    return
                end
                getVeh.pedNetId = NetworkGetNetworkIdFromEntity(valePed)
                while GetVehiclePedIsIn(valePed, false) ~= createdVehicle do
                    Wait(0)
                    SetPedIntoVehicle(valePed, createdVehicle, -1)
                end
            end
        end
        local phoneData = exports["gksphone"]:GetPhoneDataByCitizenID(citizenid)
        if phoneData then
            local BankHistorySave = exports["gksphone"]:bankHistorySave(phoneData.phone_number, 1, Config.ValePrice, _T(phoneData?.phone_lang, "GarageApp.APP_GARAGE_USEVALET_BANK_HISTORY_DESC"), phoneData.unique_id)
            if BankHistorySave then
                Debugprint("gksphone:server:vale:vehiclebring | Vehicle bringing fee | CitizenID: " .. citizenid .. " | Plate: " .. plate .. " | Price: " .. Config.ValePrice)
            end
        end
        VehicleUpdate(plate)
        Debugprint("gksphone:server:vale:vehiclebring | ESX Vehicle stored changed | CitizenID: " .. citizenid .. " | Plate: " .. plate .. " | Stored: 0")
        cb("spawned", getVeh)
    else
        Debugprint("Car Out | source: " .. source .. " | Plate: " .. plate)
        cb("carout")
    end
end)

function VehicleSpawn(source, model, coords, heading, modelType)
    local tries = 0
    heading = heading or 0
    local createdVehicle = nil
    Debugprint("VehicleSpawn | Model: " .. model .. " | Coords: " .. json.encode(coords) .. " | Heading: " .. heading .. " | ModelType: ", modelType)
    if modelType ~= nil then
        createdVehicle = CreateVehicleServerSetter(model, modelType, coords.x, coords.y, coords.z, heading)
        Wait(1000)
        while not DoesEntityExist(createdVehicle) do 
            Wait(200)
            tries = tries + 1
            if tries > 40 then
                createdVehicle = nil
                break
            end
        end
    else
        createdVehicle = CreateVehicle(model, coords.x, coords.y, coords.z, coords.h, true, true)
        while not DoesEntityExist(createdVehicle) do 
            Wait(200)
            tries = tries + 1
            if tries > 40 then
                createdVehicle = nil
                break
            end
        end
    end
    return createdVehicle
end

function SpawnPedInsideVehicle(model, coords, vehicle)
    local entity = CreatePedInsideVehicle(vehicle, 5, model, -1, true, true)
    local tries = 0

    while not DoesEntityExist(entity) do
        Wait(200)

        tries = tries + 1

        if tries > 40 then
            return nil
        end
    end

    return entity
end

AddEventHandler('gksphone:server:getOwnerEntity', function(source, cb, netId, action, change)
    local entity = NetworkGetEntityFromNetworkId(netId)
    if not DoesEntityExist(entity) then 
        cb(false)
        return
    end

    local owner = NetworkGetEntityOwner(entity)
    TriggerClientEvent('gksphone:vale:vehicleActions', owner, netId, action, change)
    cb(true)
end)