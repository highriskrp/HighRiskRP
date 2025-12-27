-- Disable radio wheel and user control at all times
CreateThread(function()
    while true do
        Wait(0)
        SetUserRadioControlEnabled(false)
        SetRadioToStationName("OFF")
    end
end)

-- Constantly disable vehicle radio
CreateThread(function()
    while true do
        Wait(300)
        local player = PlayerPedId()

        if IsPedInAnyVehicle(player, false) then
            local vehicle = GetVehiclePedIsIn(player, false)

            -- Force radio off, even if already off
            SetVehRadioStation(vehicle, "OFF")
            SetVehicleRadioEnabled(vehicle, false)
        end
    end
end)

-- Handle player entering any vehicle immediately
AddEventHandler('gameEventTriggered', function(name, args)
    if name == "CEventNetworkPlayerEnteredVehicle" then
        local ped = PlayerPedId()
        if ped == args[1] then
            local vehicle = GetVehiclePedIsIn(ped, false)
            SetVehRadioStation(vehicle, "OFF")
            SetVehicleRadioEnabled(vehicle, false)
        end
    end
end)
