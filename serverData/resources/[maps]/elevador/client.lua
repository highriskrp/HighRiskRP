

local elevador = {}
local slavo = {}
local teste = {}


local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true})
		TriggerEvent("hideHud")
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
		TriggerEvent("showHud")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--[ BUTTON ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	local ped = PlayerPedId()
	if data ~= 'fechar' then
		if teste[data] then
		
			DoScreenFadeOut(1000)
			ToggleActionMenu()
			SetTimeout(1400,function()
				setcds(slavo,data)
			end)

		else
			DoScreenFadeOut(1000)
			ToggleActionMenu()
			SetTimeout(1400,function()
				setcds(slavo,data)
			end)
		end

	
	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)

RegisterNUICallback("QtdElev",function(data,cb)
	local elevadores = getElevadores(slavo)
	if elevadores then
		cb({ elevadores = elevadores})
	end
end)


function getElevadores(type)
    local elevadores = {}
    for k,v in pairs(cfg.elevadores) do
        for k2,v2 in pairs(v) do
            if k == type then
                table.insert(elevadores,{slot = k2,title = v2.name})
            end
        end
    end

    return elevadores
end


-----------------------------------------------------------------------------------------------------------------------------------------
--[ MENU ]-------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------


Citizen.CreateThread(function()
	DoScreenFadeIn(1000)
	while true do
		local sleep = 1000

		for k,v in pairs(cfg.elevadores) do
			for k2,v2 in pairs(v) do
				local ped = PlayerPedId()
				local pedcds = GetEntityCoords(ped)
				local distance = #(pedcds - v2[1])
				elevador[k2] = v2[1]


				if distance <= 10 then
					sleep = 1
			
					DrawMarker(27, v2[1].x, v2[1].y, v2[1].z-1.0,0,0,0,0.0,0,0,1.0,1.0,0.8,255,0,0,255,0,0,0,1)
					if distance <= 2.3 then
						if IsControlJustPressed(0,38) then
							ToggleActionMenu()
							slavo = k
						end
					end
	
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÃO ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

function check(type)
	for key, value in pairs(cfg.elevadores) do
		if key == type then
			return true
		end
	end
end

function setcds(type,data)
	local ped = PlayerPedId()
	for key, value in pairs(cfg.elevadores) do
		for k,v in pairs(value) do
			if key == type then
				elevador[k] = v[1]
				SetEntityCoords(ped,elevador[data].x,elevador[data].y,elevador[data].z,0,0,0,0)
				SetEntityHeading(ped,v.h)

				DoScreenFadeIn(1000)
			end
		end
	end
end
