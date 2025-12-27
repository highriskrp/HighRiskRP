local target = Config.targetScript
local attached = false
local attachedProp = nil
local attachedPropName = nil
local trunkObjects = {}

for propName, propData in pairs(Config.globalObjects) do
    if target == 'qtarget' or target == 'qb-target' then
        exports[target]:AddTargetModel(GetHashKey(propName), {
            options = {
                {
                    icon = 'fa-solid fa-hand',
                    label = Config.Locales["take_obj"],
                    canInteract = function()
                        if attached then
                            return false
                        end

                        return true
                    end,
                    action = function(data)
                        if Config.MiniGame() then
                            takeObj(propName, false)
                        end
                    end,
                },
            },
            distance = 3,
        })
    elseif target == 'ox_target' then
        exports.ox_target:addModel(GetHashKey(propName), {
            {
                icon = 'fa-solid fa-hand',
                label = Config.Locales["take_obj"],
                debugPoly = true,
                canInteract = function()
                    if attached then
                        return false
                    end

                    return true
                end,
                onSelect = function(data)
                    if Config.MiniGame() then
                        takeObj(propName, false)
                    end
                end,
                distance = 3,
            },
        })
    end
end

CreateThread(function()
    local pedHash = GetHashKey(Config.Ped)
    RequestModel(pedHash)
    while not HasModelLoaded(pedHash) do
        Wait(500)
    end

    local ped = CreatePed(4, pedHash, Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z - 1, Config.PedCoords.w, false, true)
    FreezeEntityPosition(ped, true)
    if target == 'qtarget' or target == 'qb-target' then
        exports[target]:AddTargetModel(Config.Ped, {
            options = {
                {
                    icon = 'fas fa-list-ul',
                    label = Config.Locales["sell_obj"],
                    canInteract = function()
                        return attached
                    end,
                    action = function()
                        if attached then
                            if attachedProp and attachedPropName then
                                if DoesEntityExist(attachedProp) then
                                    TriggerServerEvent("sellObject", attachedPropName)
                                end
                                DetachEntity(attachedProp, true, true)
                                DeleteEntity(attachedProp)
                                ClearPedTasks(PlayerPedId())
                                attachedProp = nil
                                attachedPropName = nil
                                attached = false
                            end
                        end
                    end,
                },
            },
            distance = 3,
        })
    elseif target == 'ox_target' then
        exports.ox_target:addLocalEntity(ped, {
            {
                label = Config.Locales["sell_obj"],
                icon = 'fas fa-list-ul',
                distance = 1.5,
                onSelect = function()
                    if attached then
                        if attachedProp and attachedPropName then
                            DetachEntity(attachedProp, true, true)
                            DeleteEntity(attachedProp)
                            ClearPedTasks(PlayerPedId())
                            TriggerServerEvent("sellObject", attachedPropName)
                            attachedProp = nil
                            attachedPropName = nil
                            attached = false
                        end
                    end
                end,
                canInteract = function()
                    return attached
                end,
            }
        })
    end
end)

takeObj = function(propName, fromVeh)
    local itemData = Config.globalObjects[propName]
    local dummyObj

    if not itemData then
        return
    end

    local animDict = 'anim@heists@box_carry@'
    if not HasAnimDictLoaded(animDict) then
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Citizen.Wait(100)
        end
    end

    local playerPed = PlayerPedId()
    dummyObj = GetClosestObjectOfType(GetEntityCoords(playerPed), 5.0, GetHashKey(propName), 0, 0, 0)

    TriggerServerEvent('delObjS', propName)

    if not IsEntityAttachedToAnyPed(dummyObj) then


        if not fromVeh then
            if DoesEntityExist(dummyObj) then
                SetEntityAsMissionEntity(dummyObj, true, true)
                DeleteEntity(dummyObj)
            end
        end

        local model = propName
        if HasModelLoaded(model) then
            RequestModel(model)
            while not HasModelLoaded(model) do
                Wait(500)
            end
        end

        attachedPropName = propName
        dummyObj = CreateObject(propName, GetEntityCoords(playerPed), true, true, true)
        attachedProp = dummyObj
        SetEntityCollision(dummyObj, false, false)
        AttachEntityToEntity(dummyObj, playerPed, GetPedBoneIndex(playerPed, 28422), 0.0, -0.03, 0.0, 5.0, 0.0, 0.0, 1, 1, 0, 1, 0, 1)
        attached = true
        --[[ Config.PoliceAlert() ]]
        CreateThread(function()
            while attached do
                if not IsEntityPlayingAnim(PlayerPedId(), animDict, 'idle', 3) then
                    TaskPlayAnim(playerPed, animDict, 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
                end

                if IsControlJustPressed(0, 47) then
                    DetachEntity(dummyObj, true, true)
                    PlaceObjectOnGroundProperly(dummyObj)
                    SetEntityCollision(dummyObj, true, true)
                    ClearPedTasks(playerPed)
                    attached = false
                end

                Wait(1)
            end
        end)
    end
end

RegisterNetEvent('putTrunkC', function(data, vehPlate, class)
    if not trunkObjects[vehPlate] then
        trunkObjects[vehPlate] = {}
    end

    if trunkObjects[vehPlate] and Config.Vehicles[class] <= #trunkObjects[vehPlate] then
        return
    end

    trunkObjects[vehPlate] = data
end)

RegisterNetEvent('takeTrunkC', function(data, plate)
    trunkObjects[plate] = data
end)

RegisterNetEvent('delObjC', function(propName, pCoords, playerId)
    if playerId == GetPlayerServerId(PlayerId()) then
        return
    end

    local dummyObj = GetClosestObjectOfType(pCoords, 10.0, GetHashKey(propName), 0, 0, 0)
    if DoesEntityExist(dummyObj) then
        SetEntityAsMissionEntity(dummyObj, true, true)
        DeleteEntity(dummyObj)
    end
end)

local function GetClosestVehicle(dist)
	local closest = 0
	for _, v in pairs(GetGamePool('CVehicle')) do
		local dis = #(GetEntityCoords(v) - GetEntityCoords(PlayerPedId()))
		if dis < dist or dist == -1 then
			closest = v
			dist = dis
		end
	end
	return closest, dist, GetOffsetFromEntityInWorldCoords(closest, 0, -2.5, 0)
end

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(true)
    SetTextColour(255, 255, 255, 215)
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(true)
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(x,y,z, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    local factor = string.len(text) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

CreateThread(function()
    while true do
        ::start::
        local ped = PlayerPedId()
        local closestVeh, dist, coords = GetClosestVehicle(3.0)
        if closestVeh ~= 0 and GetVehiclePedIsIn(ped, false) == 0 then
            Wait(1)
            if GetVehicleDoorAngleRatio(closestVeh, 5) > 0 and #(coords - GetEntityCoords(ped)) < 1.5 then
                local plate = GetVehicleNumberPlateText(closestVeh):gsub("%s+", "")
                local vehicleClass = GetVehicleClass(closestVeh)
                if trunkObjects[plate] ~= nil and Config.Vehicles[tostring(vehicleClass)] >= #trunkObjects[plate] and #trunkObjects[plate] > 0 and not attached then
                    DrawText3Ds(coords.x, coords.y, coords.z + 0.5, Config.Locales["take_takeObjFromVeh"])
                    if IsControlJustPressed(0, 38) then
                        TriggerServerEvent("takeTrunkS", { propName = trunkObjects[plate][1], vehPlate = plate})
                        takeObj(trunkObjects[plate][1], true)
                    end
                    goto start
                elseif trunkObjects[plate] and Config.Vehicles[tostring(vehicleClass)] <= #trunkObjects[plate] and attached and attachedProp then
                    DrawText3Ds(coords.x, coords.y, coords.z + 0.5, Config.Locales["trunk_is_full"])
                else
                    if (not trunkObjects[plate] or Config.Vehicles[tostring(vehicleClass)] >= #trunkObjects[plate]) and attached and attachedProp then
                        DrawText3Ds(coords.x, coords.y, coords.z + 0.5, Config.Locales["take_placeObjToTrunk"])
                        if IsControlJustPressed(0, 38) then
                            TriggerServerEvent("putTrunkS", {propName = attachedPropName, vehPlate = plate, vehicleClass = tostring(vehicleClass)})
                            DetachEntity(attachedProp, true, true)
                            DeleteEntity(attachedProp)
                            ClearPedTasks(PlayerPedId())
                            attached = false
                        end
                        goto start
                    end
                end
            end
        end

        Wait(1000)
    end
end)