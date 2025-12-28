-- GKSPHONE | @GKSHOPTeam | discord.gg/XUck63E

--- Function to give a key to a car
--- @param callback_vehicle number The vehicle for which the key is being given
function GiveKeyCar(callback_vehicle)
  local plate = GetVehicleNumberPlateText(callback_vehicle)
  if GetResourceState('qb-vehiclekeys') == 'started' then
    TriggerEvent("vehiclekeys:client:SetOwner", plate)
  elseif GetResourceState('cd_garage') == 'started' then
    TriggerEvent('cd_garage:AddKeys', plate)
  elseif GetResourceState('qs-vehiclekeys') == 'started' then
    local model = GetDisplayNameFromVehicleModel(GetEntityModel(callback_vehicle))
    exports['qs-vehiclekeys']:GiveKeys(plate, model)
  elseif GetResourceState('wasabi_carlock') == 'started' then
    exports.wasabi_carlock:GiveKey(plate)
  elseif GetResourceState('jaksam-vehicles-keys') == 'started' then
    TriggerServerEvent("vehicles_keys:selfGiveVehicleKeys", plate)
  elseif GetResourceState('mk_vehiclekeys') == 'started' then
    exports["mk_vehiclekeys"]:AddKey(callback_vehicle)
  elseif GetResourceState('Renewed-Vehiclekeys') == 'started' then
    exports["Renewed-Vehiclekeys"]:addKey(plate)
  else
    -- Setup custom key system here...
    print("No compatible vehicle key system found to give keys.")
  end
end

--- Sets the fuel level of a vehicle using the LegacyFuel resource.
--- @param callback_vehicle number The callback vehicle ID.
--- @param fuel number The fuel level to set the vehicle to.
function SetFuel(callback_vehicle, fuel)
  fuel += 0.1
  if GetResourceState('LegacyFuel') == 'started' then
    exports['LegacyFuel']:SetFuel(callback_vehicle, fuel)
  elseif GetResourceState('ps-fuel') == 'started' then
    exports['ps-fuel']:SetFuel(callback_vehicle, fuel)
  elseif GetResourceState('Renewed-Fuel') == 'started' then
    exports['Renewed-Fuel']:SetFuel(callback_vehicle, fuel)
  elseif GetResourceState('cdn-fuel') == 'started' then
    exports['cdn-fuel']:SetFuel(callback_vehicle, fuel)
  elseif GetResourceState('lc_fuel') == 'started' then
    exports['lc_fuel']:SetFuel(callback_vehicle, fuel)
  elseif GetResourceState('ox_fuel') == 'started' then
    SetVehicleFuelLevel(callback_vehicle, fuel)
    Entity(callback_vehicle).state.fuel = fuel
  elseif GetResourceState('qs-fuelstations') == 'started' then
    exports['qs-fuelstations']:SetFuel(callback_vehicle, fuel)
  else
    SetVehicleFuelLevel(callback_vehicle, fuel)
    -- Setup custom fuel system here...
    print("No compatible fuel system found to set fuel.")
  end
end



--- Function that will run after Dispatch confirms the sending
--- @param message string The message to send.
--- @param job string The job of the sender.
--- @param isAnonymous boolean Whether the sender is anonymous.
--- @param myPos table The position of the sender.
--- @param street string The street of the sender.
function SendReport(message, job, isAnonymous, myPos, street)
  if GetResourceState('cd_dispatch') == 'started' then
      local plyrdata = exports['cd_dispatch']:GetPlayerInfo()
      TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {job},
            coords = plyrdata.coords,
            title = 'Notification sent over the phone',
            message = message,
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            blip = {
                sprite = 817,
                scale = 1.2,
                colour = 3,
                flashes = false,
                text = 'Notification phone',
                time = (5*60*1000),
                sound = 1,
            }
      })
  elseif GetResourceState('ps-dispatch') == 'started' then
        TriggerServerEvent("dispatch:server:notify",{
            codeName = "911call",
            code = "911",
            icon = 'fas fa-phone',
            street = street,
            priority = 2,
            coords = myPos,
            message = "Notification sent over the phone",
            information = message,
            jobs = job
        })
  end
end


--- Function to check if the player has a specific item in their inventory.
--- @param itemName string The name of the item to check for.
--- @return boolean True if the item is found, false otherwise.
function HasItem(itemName)
  local success, searchItem = pcall(JobCenterHasItem, itemName)
  if success then
    return searchItem
  else
    local items = GetInventory()
    if items then
      for k, v in pairs(items) do
        if v.name == itemName then
          return true
        end
      end
    end
  end
  return false
end

--- Underwater phone usage checking
if Config.UnderWaterCheck then
  CreateThread(function()
      local swimming = false
      while true do
          Wait(1000*2)
          if (IsPedSwimmingUnderWater(PlayerPedId())) and IsPedInAnyVehicle(PlayerPedId(), false) ~= 1 then
                if PhoneOpen then
                  PhoneForceClose()
                end
                if not PhoneOpenBlock then
                  PhoneOpenBlock = true
                  PhoneBlockReason = "The phone cannot be used underwater."
                  swimming = true
                end
          elseif swimming then
              if PhoneOpenBlock then 
                  PhoneOpenBlock = false
                  PhoneBlockReason = ""
              end
          end
      end
  end)
end

--- Command to delete phone objects
RegisterCommand("delphone", function()
  local playerPed = PlayerPedId();
  for _, v in pairs(GetGamePool("CObject")) do
      if IsEntityAttachedToEntity(playerPed, v) then
          SetEntityAsMissionEntity(v, true, true)
          DeleteObject(v)
          DeleteEntity(v)
      end
  end
end, false)

--- Key Bindings
if Config.KeyBindings then
  if Config.KeyBindings.answerCall.enabled then
      RegisterCommand("+answerPhoneCall", function () AnswerPhoneCall() end, false)
      RegisterCommand("-answerPhoneCall", function () end, false)
      RegisterKeyMapping("+answerPhoneCall", Config.KeyBindings.answerCall.description, "keyboard", Config.KeyBindings.answerCall.key)
  end

  if Config.KeyBindings.declineCall.enabled then
      RegisterCommand("+endPhoneCall", function () EndPhoneCall() end, false)
      RegisterCommand("-endPhoneCall", function () end, false)
      RegisterKeyMapping("+endPhoneCall", Config.KeyBindings.declineCall.description, "keyboard", Config.KeyBindings.declineCall.key)
  end

  if Config.KeyBindings.toggleCursor.enabled then
      RegisterCommand("+togglePhoneCursor", function () TogglePhoneCursor() end, false)
      RegisterCommand("-togglePhoneCursor", function () end, false)
      RegisterKeyMapping("+togglePhoneCursor", Config.KeyBindings.toggleCursor.description, "keyboard", Config.KeyBindings.toggleCursor.key)
  end
end

