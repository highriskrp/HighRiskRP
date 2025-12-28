local animDic = nil
local animName = nil

local phoneAnimations = {
    default = {
        base = {
            dict = "amb@world_human_stand_mobile@male@text@base",
            anim = "base"
        },
        enter = {
            dict = "amb@world_human_stand_mobile@male@text@enter",
            anim = "enter"
        },
        exit = {
            dict = "amb@world_human_stand_mobile@male@text@exit",
            anim = "exit"            
        },
        readBase = {
            dict = "cellphone@",
            anim = "cellphone_text_read_base"
        },
        car = {
            dict = "anim@cellphone@in_car@ps",
            anim = "cellphone_text_in"            
        }
    },
    camera = {
        selfie = {
            dict = "cellphone@self",
            anim = "selfie"
        },
        photo = {
            dict = "cellphone@",
            anim = "cellphone_photo_idle"            
        }
    },
    call = {
        base = {
            dict = "cellphone@",
            anim = "cellphone_call_listen_base"              
        }
    }
}

local function LoadAnimation(dict)
  if dict ~= nil then
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
      Wait(1)
    end
  end
end

local function CheckAnimLoop()
    CreateThread(function()
        local carin = false
        local readDict = phoneAnimations["default"]["readBase"].dict
        local readAnim = phoneAnimations["default"]["readBase"].anim
        local carDict = phoneAnimations["default"]["car"].dict
        local carAnim = phoneAnimations["default"]["car"].anim
        while animDic ~= nil and animName ~= nil do
            local ped = PlayerPedId()
            local vehicleIn = IsPedInAnyVehicle(ped, true)
            if not carin and not IsEntityPlayingAnim(ped, readDict, readAnim, 3) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not CameraOpen and not Incall then
              LoadAnimation(readDict)
              TaskPlayAnim(ped, readDict, readAnim, 3.0, 3.0, -1, 50, 0, false, false, false)
            elseif not carin and not IsEntityPlayingAnim(ped, animDic, animName, 3) and not (IsPedRunning(ped) or IsPedSprinting(ped)) and not CameraOpen then
              LoadAnimation(animDic)
              TaskPlayAnim(ped, animDic, animName, 8.0, -8.0, -1, 49, 0, false, false, false)
            elseif not carin and vehicleIn and not CameraOpen then
              carin = true
              LoadAnimation(carDict)
              TaskPlayAnim(ped, carDict, carAnim, 7.0, -1, -1, 50, 0, false, false, false)
            elseif not vehicleIn and carin and not CameraOpen then
              carin = false
            end
          Wait(500)
        end
    end)
end

function PhoneDoAnim(anim)
  local player = PlayerId()
  local ped = GetPlayerPed(player)
  RequestModel(propName)
  while not HasModelLoaded(GetHashKey(propName)) do
		Wait(1)
	end
  if Incall and not CameraOpen then
    anim = "call"
  end
  if anim == "phone" then
    if PhoneProp ~= nil then
      DeleteEntity(PhoneProp)
      PhoneProp = nil
    end
    animDic = phoneAnimations["default"]["base"].dict
    animName = phoneAnimations["default"]["base"].anim

    local enterDic = phoneAnimations["default"]["enter"].dict
    local enterName = phoneAnimations["default"]["enter"].anim
    LoadAnimation(enterDic)
    TaskPlayAnim(PlayerPedId(), enterDic, enterName, 8.0, 1.0, -1, 49, 0, false, false, false)
    Wait(1000)
    if animDic == nil then return end
    LoadModel(GetHashKey(propName))
    PhoneProp = CreateObject(GetHashKey(propName), 1.0, 1.0, 1.0, true, true, false)
    AttachEntityToEntity(PhoneProp, ped, GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
    LoadAnimation(animDic)
    Wait(2000)
    if not CameraOpen then
      TaskPlayAnim(PlayerPedId(), animDic, animName, 8.0, 1.0, -1, 49, 0, false, false, false)
    end
  elseif anim == "selfie" then
    animDic = phoneAnimations["camera"]["selfie"].dict
    animName = phoneAnimations["camera"]["selfie"].anim
    LoadAnimation(animDic)
    TaskPlayAnim(ped, animDic, animName,  8.0, -8.0, -1, 49, 0, false, false, false)
  elseif anim == "camera" then
    animDic = phoneAnimations["camera"]["photo"].dict
    animName = phoneAnimations["camera"]["photo"].anim
    LoadAnimation(animDic)
    TaskPlayAnim(ped, animDic, animName,  8.0, -8.0, -1, 49, 0, false, false, false)
  elseif anim == "exit" then
    animDic = nil
    animName = nil

    local exitDic = phoneAnimations["default"]["exit"].dict
    local exitName = phoneAnimations["default"]["exit"].anim
    LoadAnimation(exitDic)
    TaskPlayAnim(PlayerPedId(), exitDic, exitName, 8.0, 1.0, -1, 49, 0, false, false, false)
    Wait(2000)
    if PhoneProp ~= nil then
      DeleteEntity(PhoneProp)
    end
    PhoneProp = nil
    ClearPedSecondaryTask(PlayerPedId())
    return
  elseif anim == "call" then
    if PhoneProp == nil then
      LoadModel(GetHashKey(propName))
      PhoneProp = CreateObject(GetHashKey(propName), 1.0, 1.0, 1.0, true, true, false)
      AttachEntityToEntity(PhoneProp, ped, GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
    end
    animDic = phoneAnimations["call"]["base"].dict
    animName = phoneAnimations["call"]["base"].anim
    LoadAnimation(animDic)
    TaskPlayAnim(ped, animDic, animName,  8.0, -8.0, -1, 49, 0, false, false, false)
  elseif anim == "base" then
    if PhoneProp ~= nil then
      DeleteEntity(PhoneProp)
      PhoneProp = nil
    end
    animDic = phoneAnimations["default"]["base"].dict
    animName = phoneAnimations["default"]["base"].anim
    LoadAnimation(animDic)
    LoadModel(GetHashKey(propName))
    PhoneProp = CreateObject(GetHashKey(propName), 1.0, 1.0, 1.0, true, true, false)
    AttachEntityToEntity(PhoneProp, ped, GetPedBoneIndex(ped, 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
    TaskPlayAnim(PlayerPedId(), animDic, animName, 8.0, 1.0, -1, 49, 0, false, false, false)
    Wait(2000)
  end
  CheckAnimLoop()
end