local display = false

-- Function to toggle the NUI display and focus
function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

-- Register a command to toggle the menu display
RegisterCommand("serverinfo", function() -- Change "togglemenu" to your preferred command
    SetDisplay(not display)
end, false)

-- Register callback for closing the menu with the Escape key
RegisterNUICallback('Escape', function()
    SetDisplay(false)
end)

-- Register callback for the 'exit' event from JavaScript
RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

-- Main loop for control handling
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if display then
            -- Disable controls when the menu is visible
            DisableControlAction(0, 1, true) -- LookLeftRight
            DisableControlAction(0, 2, true) -- LookUpDown
            DisableControlAction(0, 142, true) -- MeleeAttackAlternate
            DisableControlAction(0, 18, true) -- Enter
            DisableControlAction(0, 322, true) -- ESC
            DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
        end
    end
end)






--[[
                ██████████                        
            ████          ████                    
          ██                  ██                  
        ██                      ██                
      ██                          ██              
    ██                              ██            
    ██                              ██            
  ██        ████        ████          ██          
  ██        ██            ██          ██          
  ██        ████        ████          ██          
  ██    ░░░░                ░░░░      ██          
  ██            ████████              ██          
  ██  ██████              ██████      ██          
  ██        ██          ██            ██          
  ██        ██          ██            ██          
  ██  ██████              ██████        ██    ██  
  ██                                      ████  ██
    ██                                          ██
    ██                                          ██
      ██                                      ██  
        ██                                    ██  
          ██                              ████    
            ████                      ████        
                ██████████████████████            

]]
