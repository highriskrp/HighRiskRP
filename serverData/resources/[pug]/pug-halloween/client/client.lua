print'Pug Halloween 1.0.3'
---------- [Locals] ----------
local HalloweenEventStarted
local ForcePlayerWeapon
local ActiveEventTime
local PlayerHasDied
local DisablingKeys
local PlayerLost
local livetime
local First = {
	Name = "",
	Kills = 0,
} 
local Second = {
	Name = "",
	Kills = 0,
}  
local Third = {
	Name = "",
	Kills = 0,
}
ZombieNPC = {}
RandomTierOfDifficulty = Config.ZombieDifficulty[math.random(1, #Config.ZombieDifficulty)] -- Random Difficulty selection
------------------------------

---------- [Functions] ----------
-- Change this to your notification script if needed
function HalloweenNotify(msg, type, length)
	if Framework == "ESX" then
		FWork.ShowNotification(msg)
	elseif Framework == "QBCore" then
    	FWork.Functions.Notify(msg, type, length)
	end
end

function PugSoundPlay(Name, Volume, Looped)
    local actionName = "PlaySound"
    if Looped then actionName = "playlooped" end
    SendNUIMessage({
        action = actionName,
        audio = tostring(Name)..".ogg",
        volume = tonumber(Volume),
        loop = Looped,
    })
end

local function Draw2DText(content, font, colour, scale, x, y)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(colour[1],colour[2],colour[3], 255)
    SetTextEntry("STRING")
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    AddTextComponentString(content)
    DrawText(x, y)
end

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(true)
	AddTextComponentString(text)
	SetDrawOrigin(x,y,z, 0)
	DrawText(0.0, 0.0)
	local factor = (string.len(text)) / 370
	DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 41, 11, 41, 90)
	ClearDrawOrigin()
end

local function LoadModel(model)
    if HasModelLoaded(model) then return end
	RequestModel(model)
	while not HasModelLoaded(model) do
		Wait(0)
	end
end

local function loadAnimDict(Anim)
	RequestAnimDict(Anim)
	while not HasAnimDictLoaded(Anim) do
		Wait(0)
	end
end

local function MakePedHatePlayer(Npc1)
    SetPedMaxHealth(Npc1, 500)
    SetPedArmour(Npc1, 200)
    SetCanAttackFriendly(Npc1, false, true)
    SetPedFleeAttributes(Npc1, 0, 0)
    SetPedKeepTask(Npc1, true)
    SetBlockingOfNonTemporaryEvents(Npc1, true)
end

local function HasHalloweenEventStarted()
    return HalloweenEventStarted
end

local function DoTrickOrTreatSequence(PedCoords)
	local PlayerCoords = GetEntityCoords(PlayerPedId())
	-- Player Go to door first and knocks
	TaskGoToCoordAnyMeans(PlayerPedId(), vector3(PedCoords.x, PedCoords.y, PedCoords.z), 1.0, 0, 0, 786603, 0xbf800000)
	while #(GetEntityCoords(PlayerPedId()) - vector3(PedCoords.x, PedCoords.y, PedCoords.z)) >= 0.7 do Wait(500) TaskGoToCoordAnyMeans(PlayerPedId(), vector3(PedCoords.x, PedCoords.y, PedCoords.z), 1.0, 0, 0, 786603, 0xbf800000) end
	-- ClearPedTasksImmediately(PlayerPedId())
	loadAnimDict("timetable@jimmy@doorknock@")
	TaskPlayAnim(PlayerPedId(), "timetable@jimmy@doorknock@", "knockdoor_idle", 8.0, -8, -1, 0, 0, 0, 0, 0)
	Wait(3000)
	TaskGoToCoordAnyMeans(PlayerPedId(), vector3(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z), 1.0, 0, 0, 786603, 0xbf800000)
	while #(GetEntityCoords(PlayerPedId()) - vector3(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z)) >= 0.7 do Wait(1) end
	-- ClearPedTasksImmediately(PlayerPedId())
	TaskTurnPedToFaceCoord(PlayerPedId(), vector3(PedCoords.x, PedCoords.y, PedCoords.z))
	Wait(1400)
	-- Random local spawn
	local RandomPed1Model = math.random(1, #Config.RandomTickOrTreatPed)
	LoadModel(Config.RandomTickOrTreatPed[RandomPed1Model])
	local HousePed = CreatePed(4, Config.RandomTickOrTreatPed[RandomPed1Model], vector4(PedCoords.x, PedCoords.y, PedCoords.z-1, GetEntityHeading(PlayerPedId())-180 ))
	while not DoesEntityExist(HousePed) do Wait(100) end
	loadAnimDict("gestures@m@standing@casual")
	TaskPlayAnim(PlayerPedId(), "gestures@m@standing@casual", "gesture_hello", 8.0, -8, -1, 0, 0, 0, 0, 0)
	TaskPlayAnim(HousePed, "gestures@m@standing@casual", "gesture_hello", 8.0, -8, -1, 0, 0, 0, 0, 0)
	Wait(1500)
	-- Local and player goes to eachother
	PlayerCoords = GetEntityCoords(PlayerPedId())
	TaskGoToCoordAnyMeans(HousePed, vector3(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z), 1.0, 0, 0, 786603, 0xbf800000)
	TaskGoToCoordAnyMeans(PlayerPedId(), GetEntityCoords(HousePed), 1.0, 0, 0, 786603, 0xbf800000)
	if #(GetEntityCoords(PlayerPedId()) -GetEntityCoords(HousePed)) >= 0.7 then
		while #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(HousePed)) >= 1.0 do Wait(1) end
	else
		Wait(1000)
	end
	-- They face eachother then do hand off
	ClearPedTasksImmediately(PlayerPedId())
	ClearPedTasksImmediately(HousePed)
	TaskTurnPedToFaceCoord(PlayerPedId(), GetEntityCoords(HousePed))
	TaskTurnPedToFaceCoord(HousePed, GetEntityCoords(PlayerPedId()))
	Wait(500)
	SetPedTalk(HousePed)
	PlayAmbientSpeech1(HousePed, 'GENERIC_HI', 'SPEECH_PARAMS_STANDARD')
	local obj2 = CreateObject(GetHashKey('ng_proc_candy01a'), 0, 0, 0, true)
	AttachEntityToEntity(obj2, HousePed, GetPedBoneIndex(HousePed,  57005), 0.13, 0.02, 0.0, -90.0, 0, 0, 1, 1, 0, 1, 0, 1)
	loadAnimDict("mp_common")
	TaskPlayAnim(PlayerPedId(), "mp_common", "givetake2_a", 8.0, -8, -1, 0, 0, 0, 0, 0)    
	TaskPlayAnim(HousePed, "mp_common", "givetake2_a", 8.0, -8, -1, 0, 0, 0, 0, 0)    
	Wait(1000)
	AttachEntityToEntity(obj2, PlayerPedId(), GetPedBoneIndex(PlayerPedId(),  57005), 0.13, 0.02, 0.0, -90.0, 0, 0, 1, 1, 0, 1, 0, 1)
	Wait(2300)
	DeleteEntity(obj2)
	TriggerServerEvent("Pug:server:GivePlayerHolooweenItem")
	for k, v in pairs(GetGamePool('CObject')) do
		if IsEntityAttachedToEntity(PlayerPedId(), v) or IsEntityAttachedToEntity(HousePed, v) then
			SetEntityAsMissionEntity(v, true, true)
			DeleteObject(v)
			DeleteEntity(v)
		end
	end
	TriggerEvent("Pug:ReloadGuns:sling")
	PlayAmbientSpeech1(HousePed, 'GENERIC_THANKS', 'SPEECH_PARAMS_STANDARD')
	Wait(1000)
	-- Local ped goes back into the house
	if #(GetEntityCoords(HousePed) -vector3(PedCoords.x, PedCoords.y, PedCoords.z)) >= 0.7 then
		TaskGoStraightToCoord(HousePed, vector3(PedCoords.x, PedCoords.y, PedCoords.z), 1.0, 20000, 40000.0, 0.5)
	else
		local forwardVector = GetEntityForwardVector(HousePed)
		TaskTurnPedToFaceCoord(HousePed, vector3(PedCoords.x - forwardVector.x / 180, PedCoords.y + forwardVector.y / 180, PedCoords.z))
	end
	Wait(1000)
	loadAnimDict("anim@mp_player_intmenu@key_fob@")
    TaskPlayAnim(HousePed, 'anim@mp_player_intmenu@key_fob@' ,'fob_click' ,8.0, -8.0, 10000, 51, 0, false, false, false)
	Wait(500)
	TriggerEvent("FullyDeleteHollweenPeds",HousePed)
end
------------------------------

---------- [Events] ----------
RegisterNetEvent("Pug:client:HalloweenNotify", function(msg, type, length)
	HalloweenNotify(msg, type, length)
end)

RegisterNetEvent("Pug:client:CreateHalloweenZombies", function()
	for i=1, RandomTierOfDifficulty.HowManyZombiesSpawnAtOnce do
		local RandomPed1Model = math.random(1, #Config.RandomZombiePedModle)
		local Coords = GetEntityCoords(PlayerPedId())
		LoadModel(Config.RandomZombiePedModle[RandomPed1Model])
		local found, spawnPos, spawnHeading = GetClosestVehicleNodeWithHeading(Coords.x + math.random(-Config.DistanceZombiesSpawnFromPlayer, Config.DistanceZombiesSpawnFromPlayer), Coords.y + math.random(-Config.DistanceZombiesSpawnFromPlayer, Config.DistanceZombiesSpawnFromPlayer), Coords.z, 0, 3, 0)
		local ZombieSpawnLocation = spawnPos
		local NpcNumber = #ZombieNPC + 1 
		if Config.Optimization then
			ZombieNPC[NpcNumber] = {
				Ped = CreatePed(4, Config.RandomZombiePedModle[RandomPed1Model], spawnPos.x, spawnPos.y, spawnPos.z),
				DoneAnimation = false,
			}
		else
			ZombieNPC[NpcNumber] = {
				Ped = CreatePed(4, Config.RandomZombiePedModle[RandomPed1Model], spawnPos.x, spawnPos.y, spawnPos.z, 0, true),
				DoneAnimation = false,
			}
		end
		if ZombieNPC[NpcNumber] then
			if ZombieNPC[NpcNumber].Ped ~= nil then
				local Count = 1
				while not DoesEntityExist(ZombieNPC[NpcNumber].Ped) do
					Wait(100)
					Count = Count + 1
					if Count >= 50 then
						break
					end
				end
				if DoesEntityExist(ZombieNPC[NpcNumber].Ped) then
					-- Zombie Walk style
					RequestAnimSet("move_m@hobo@b")
					while not HasAnimSetLoaded("move_m@hobo@b") do Wait(0) end
					SetPedMovementClipset(ZombieNPC[NpcNumber].Ped, "move_m@hobo@b")
					SetAmbientVoiceName(ZombieNPC[NpcNumber].Ped, "MUTE")
					ResetPedWeaponMovementClipset(ZombieNPC[NpcNumber].Ped)
					ResetPedStrafeClipset(ZombieNPC[NpcNumber].Ped)
					TaskGoToCoordAnyMeans(ZombieNPC[NpcNumber].Ped, Coords, RandomTierOfDifficulty.RunSpeedOfZombies, 0, 0, 786603, 0xbf800000)
					MakePedHatePlayer(ZombieNPC[NpcNumber].Ped)
				end
			end
		end
	end
end)
-- NEW CODE
RegisterNetEvent("Pug:client:StartHalloweenEvent", function(Time, Weapon)
	if not HalloweenEventStarted then
		TriggerEvent("Pug:client:HalloweenReviveEvent")
		if Config.DoOpeneingEventScene then
			if IsPedInAnyVehicle(PlayerPedId()) then
				TaskLeaveVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 1)
			end
			Wait(2000)
			TriggerEvent("Pug:HalloweenDisableAllControllPress", 8000)
			FreezeEntityPosition(PlayerPedId(), true)
			SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"),true)
			local coords = GetEntityCoords(PlayerPedId())
			local forward = GetEntityForwardVector(PlayerPedId())
			local x, y, z = table.unpack(coords + forward * 1.0* 1)
			CreateCamera(vector3(x, y, z), vector3(0.0, 0.0, 0.0), 4000)-- creates camera pos and rotation
			PugSoundPlay("backpocket", 0.07)
			Wait(3000)
			loadAnimDict("mp_suicide")
			TaskPlayAnim(PlayerPedId(), "mp_suicide", "pill", 8.0, -8.0, 7000, 1, 0, false, false, false)
			Wait(1000)
			PlaySoundFromCoord(-1, "SPAWN", coords.x, coords.y, coords.z, "BARRY_01_SOUNDSET", 0, 0, 0)
			Wait(2000)
			DoScreenFadeOut(500)
			Wait(500)
			TaskPlayAnim(PlayerPedId(), "mp_suicide", "pill", 8.0, -8.0, 5000, 1, 0, false, false, false)
			Wait(3000)
			DestoryCamera()
			Wait(1000)
			DoScreenFadeIn(3000)
			FreezeEntityPosition(PlayerPedId(), false)
		end
	end
	if not HalloweenEventStarted then
		ActiveEventTime = Time
		livetime = Time
		HalloweenEventStarted = true
		ForcePlayerWeapon = Weapon
		-- Wapon Stuff
		GiveWeaponToPed(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 0, false, false)
		SetPedAmmo(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 30)
		SetCurrentPedWeapon(PlayerPedId(), GetHashKey(ForcePlayerWeapon), true)
		RandomTierOfDifficulty = Config.ZombieDifficulty[math.random(1, #Config.ZombieDifficulty)] -- Random Difficulty selection
		TriggerEvent("chatMessage", "^1ZOMBIE-EVENT", "normal", "KILL REWARD: ^2 +"..Config.HealthIncreaseToPlayerReward.." HP ^0 & ^2 +"..Config.RandomAmmoToGiveWhenKillMin.." - "..Config.RandomAmmoToGiveWhenKillMax.. " AMMO")
		-- Loop Events
		TriggerEvent("Pug:client:ShowLiveHalloweenScoreboard")
		TriggerEvent("Pug:client:RunLoopTellngZombiesWhatToDo")
		TriggerEvent("Pug:client:HolloweenActiveRealTimeLoop")
		TriggerEvent("Pug:client:ForcePlayersOnFeetLoopHalloween")
		while HalloweenEventStarted do
			Wait(math.ceil(RandomTierOfDifficulty.TimeRateOfZombiesSpawn * 1000))
			if HalloweenEventStarted and not PlayerLost then
				if not PlayerHasDied then
					TriggerEvent("Pug:client:CreateHalloweenZombies")
					Wait(2000)
					if math.random(1,100) <= Config.ChanceTheZombieDifficultyChanges then
						RandomTierOfDifficulty = Config.ZombieDifficulty[math.random(1, #Config.ZombieDifficulty)] -- Random Difficulty selection
					end
				end
			else
				PlayerLost = false
				break
			end
		end
	else
		HalloweenEventStarted = false
	end
end)

RegisterNetEvent("Pug:client:RunLoopTellngZombiesWhatToDo", function()
	while HalloweenEventStarted do
		Wait(700)
		if HalloweenEventStarted and not PlayerLost then
			if not PlayerHasDied or not Config.RemovePlayerFromEventWhenDies then
				if not PlayerHasDied then
					if ForcePlayerWeapon then
						local selectedWeapon = GetSelectedPedWeapon(GetPlayerPed(PlayerId()))
						if selectedWeapon == GetHashKey(ForcePlayerWeapon) then
						else
							GiveWeaponToPed(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 0, false, false)
							SetCurrentPedWeapon(PlayerPedId(), GetHashKey(ForcePlayerWeapon), true)
						end
					end
					HandleZombieMovement()
				end
			else
				-- Removal of zombies when the event is toggled off
				for k, v in pairs(ZombieNPC) do
					Wait(math.random(100, 300))
					while not HasNamedPtfxAssetLoaded("core") do RequestNamedPtfxAsset("core") Wait(5) end
					UseParticleFxAssetNextCall("core")
					if DoesEntityExist(ZombieNPC[k].Ped) then
						local DustEffect = StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_dust", GetEntityCoords(ZombieNPC[k].Ped).x, GetEntityCoords(ZombieNPC[k].Ped).y, GetEntityCoords(ZombieNPC[k].Ped).z-1, 0.0, 0.0, GetEntityHeading(PlayerPedId())-180.0, 2.5, 0.0, 0.0, 0.0)
						TriggerEvent("FullyDeleteHollweenPeds",ZombieNPC[k].Ped)
						if DoesEntityExist(ZombieNPC[k].Ped) then
							TriggerEvent("FullyDeleteHollweenPeds",ZombieNPC[k].Ped)
							SetEntityAsNoLongerNeeded(ZombieNPC[k].Ped)
						end
						ZombieNPC[k] = nil
					end
				end
				break
			end
		else
			-- Removal of zombies when the event is toggled off
			for k, v in pairs(ZombieNPC) do
				Wait(math.random(100, 700))
				while not HasNamedPtfxAssetLoaded("core") do RequestNamedPtfxAsset("core") Wait(5) end
				UseParticleFxAssetNextCall("core")
				if DoesEntityExist(ZombieNPC[k].Ped) then
					if ZombieNPC[k] then
						local DustEffect = StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_dust", GetEntityCoords(ZombieNPC[k].Ped).x, GetEntityCoords(ZombieNPC[k].Ped).y, GetEntityCoords(ZombieNPC[k].Ped).z-1, 0.0, 0.0, GetEntityHeading(PlayerPedId())-180.0, 2.5, 0.0, 0.0, 0.0)
						TriggerEvent("FullyDeleteHollweenPeds",ZombieNPC[k].Ped)
						ZombieNPC[k] = nil
					end
				end
			end
			SetPedAmmo(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 0)
			RemoveWeaponFromPed(PlayerPedId(), GetHashKey(ForcePlayerWeapon))
			SetCurrentPedWeapon(PlayerPedId(), GetHashKey("weapon_unarmed"), true)
			-- Revive when event ends
			TriggerEvent("Pug:client:HalloweenReviveEvent")
			PlayerHasDied = false
			break
		end
	end
end)

-- Removal of sombies when they die
RegisterNetEvent("Pug:client:RemoveDeadZombie", function(k, Entity)
	Wait(math.random(1000, 5000))
	local Coords = GetEntityCoords(Entity)
	while not HasNamedPtfxAssetLoaded("core") do RequestNamedPtfxAsset("core") Wait(5) end
	UseParticleFxAssetNextCall("core")
    local DustEffect = StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_dust", GetEntityCoords(Entity).x, GetEntityCoords(Entity).y, GetEntityCoords(Entity).z-1, 0.0, 0.0, GetEntityHeading(PlayerPedId())-180.0, 2.5, 0.0, 0.0, 0.0)
	TriggerEvent("FullyDeleteHollweenPeds",Entity)
	local selectedWeapon = GetSelectedPedWeapon(GetPlayerPed(PlayerId()))
	local ammotype = GetPedAmmoTypeFromWeapon(PlayerPedId(), selectedWeapon)
	AddAmmoToPedByType(PlayerPedId(), ammotype, math.random(Config.RandomAmmoToGiveWhenKillMin,Config.RandomAmmoToGiveWhenKillMax))
	PlaySoundFromCoord(-1, "SPAWN", Coords.x, Coords.y, Coords.z, "BARRY_01_SOUNDSET", 0, 0, 0)
	SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) + Config.HealthIncreaseToPlayerReward)
	TriggerServerEvent("Pug:Server:UpdateHalloweenScoreboard")
end)
RegisterNetEvent("Pug:client:HalloweenChangeWeatherForServer", function(Bool)
	Wait(5000)
	if Bool then
		if Config.DoOpeneingEventScene then
			Wait(4000)
		end
		if GetResourceState('cd_easytime') == 'started' then
			local data = {
				weather = "halloween",
				hours = 23
			}
			TriggerServerEvent('cd_easytime:ForceUpdate', data)
		else
			TriggerServerEvent('qb-weathersync:server:setWeather', "halloween")
			TriggerServerEvent("qb-weathersync:server:setTime", 23, 1)
		end
	else
		Wait(3000)
		if GetResourceState('cd_easytime') == 'started' then
			local data = {
				weather = "clear",
				hours = 9
			}
			TriggerServerEvent('cd_easytime:ForceUpdate', data)
		else
			TriggerServerEvent('qb-weathersync:server:setWeather', "clear")
			TriggerServerEvent("qb-weathersync:server:setTime", 9, 1)
		end
	end
end)
RegisterNetEvent("Pug:client:UpdateHalloweenScoreboardForEveryone", function(DataFirst, DataSecond, DataThird)
	First.Name = DataFirst.Name
	First.Kills = DataFirst.Kills
	Second.Name = DataSecond.Name
	Second.Kills = DataSecond.Kills
	Third.Name = DataThird.Name
	Third.Kills = DataThird.Kills
end)
RegisterNetEvent("Pug:client:ShowLiveHalloweenScoreboard", function()
	while HalloweenEventStarted do
		Wait(0)
		if not PlayerLost then
			if IsPedFatallyInjured(PlayerPedId()) then
				if not PlayerHasDied then
					PlayerHasDied = true
					local startTime = GetGameTimer()

					while GetEntitySpeed(PlayerPedId()) > 0.5 or IsPedRagdoll(PlayerPedId()) do
						Wait(10)

						-- check if 4 seconds have passed
						if GetGameTimer() - startTime >= 4000 then
							SetPedCanRagdoll(PlayerPedId(), false)
							Wait(1000)
							SetPedCanRagdoll(PlayerPedId(), true)
							break
						end
					end

					Wait(2000)
					if Config.RemovePlayerFromEventWhenDies then
						PlayerLost = true
						DoScreenFadeOut(1000)
						Wait(2000)
						local RandomRespawn = math.random(1, #Config.RandomHospitalRepsawnLocation)
						SetEntityCoords(PlayerPedId(),Config.RandomHospitalRepsawnLocation[RandomRespawn])
						SetEntityHeading(PlayerPedId(), Config.RandomHospitalRepsawnLocation[RandomRespawn].w)
						Wait(4000)
						TriggerEvent("Pug:client:HalloweenReviveEvent")
						DoScreenFadeIn(1000)
					else
						Wait(2000)
						for k, v in pairs(ZombieNPC) do
							Wait(math.random(100, 700))
							while not HasNamedPtfxAssetLoaded("core") do RequestNamedPtfxAsset("core") Wait(5) end
							UseParticleFxAssetNextCall("core")
							if ZombieNPC[k] then
								if DoesEntityExist(ZombieNPC[k].Ped) then
									local DustEffect = StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_dust", GetEntityCoords(ZombieNPC[k].Ped).x, GetEntityCoords(ZombieNPC[k].Ped).y, GetEntityCoords(ZombieNPC[k].Ped).z-1, 0.0, 0.0, GetEntityHeading(PlayerPedId())-180.0, 2.5, 0.0, 0.0, 0.0)
									TriggerEvent("FullyDeleteHollweenPeds",ZombieNPC[k].Ped)
									ZombieNPC[k] = nil
								end
							end
						end
						DoScreenFadeOut(1000)
						Wait(3000)
						TriggerEvent("Pug:client:HalloweenReviveEvent")
						DoScreenFadeIn(1000)
						Wait(1000)
						GiveWeaponToPed(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 0, false, false)
						SetPedAmmo(PlayerPedId(), GetHashKey(ForcePlayerWeapon), 30)
						SetCurrentPedWeapon(PlayerPedId(), GetHashKey(ForcePlayerWeapon), true)
					end
					PlayerHasDied = false
				end
			end
		end
		if HalloweenEventStarted then
			Draw2DText("~g~[1]~w~ " .. First.Name .. ": ~y~" .. First.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.648)
			Draw2DText("~o~[2]~w~ " .. Second.Name .. ": ~y~" .. Second.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.673)
			Draw2DText("~r~[3]~w~ " .. Third.Name .. ": ~y~" .. Third.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.698)
			local seconds = math.ceil(Config.LengOfActiveEvent * 60) - math.ceil(livetime - ActiveEventTime)
			Draw2DText(TimeDisplay(seconds), 4, {255, 255, 255}, 0.4, 0.070, 0.623)
		else
			local Count = 1
			while Count <= 1000 do
				Wait(1)
				Count = Count + 1
				if Count >= 1000 then
					break
				end
				Draw2DText("~g~[1]~w~ " .. First.Name .. ": ~y~" .. First.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.648)
				Draw2DText("~o~[2]~w~ " .. Second.Name .. ": ~y~" .. Second.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.673)
				Draw2DText("~r~[3]~w~ " .. Third.Name .. ": ~y~" .. Third.Kills, 4, {255, 255, 255}, 0.4, 0.070, 0.698)
				Draw2DText("~r~ 00:00 ~w~", 4, {255, 255, 255}, 0.4, 0.070, 0.623)
			end
			break
		end
	end
end)
RegisterNetEvent("Pug:client:ForcePlayersOnFeetLoopHalloween", function()
	if Config.ForcePlayersOnFeet then
		while HalloweenEventStarted do
			Wait(1)
			if HalloweenEventStarted and not PlayerLost then
				if IsPedInAnyVehicle(PlayerPedId()) then
					TaskLeaveVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(PlayerPedId(), 1))
					Wait(500)
				end
				DisableControlAction(0, 22, true) -- Disavke jump
			else
				break
			end
		end
	end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    Wait(2000)
	if not HalloweenEventStarted then
		Config.FrameworkFunctions.TriggerCallback('Pug:server:IsActiveHalloweenEventStarted', function(Data)
			if Data.Started then
				livetime = Data.Time
				TriggerEvent("Pug:client:StartHalloweenEvent", Data.Time, Data.Weapon)
			end
		end)
	end
end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function()
    Wait(2000)
	if not HalloweenEventStarted then
		Config.FrameworkFunctions.TriggerCallback('Pug:server:IsActiveHalloweenEventStarted', function(Data)
			if Data.Started then
				livetime = Data.Time
				TriggerEvent("Pug:client:StartHalloweenEvent", Data.Time, Data.Weapon)
			end
		end)
	end
end)

RegisterNetEvent("Pug:client:HalloweenReviveEvent", function()
    TriggerEvent('ars_ambulancejob:healPlayer', {revive = true}) -- to revive player
    TriggerEvent('ars_ambulancejob:healPlayer', {heal = true}) -- to heal player
    TriggerEvent('ak47_qb_ambulancejob:revive')
    TriggerEvent('ak47_qb_ambulancejob:skellyfix')
    TriggerEvent('hospital:client:Revive')
    TriggerEvent('esx_ambulancejob:revive')
    if Framework == "ESX" then
        TriggerEvent('ak47_ambulancejob:revive') 
        TriggerEvent('ak47_ambulancejob:skellyfix') 
        TriggerEvent('wasabi_ambulance:revive') -- Wasabi ambulance was updated and added support for "hospital:client:Revive"
    end
    TriggerEvent('visn_are:resetHealthBuffer')
    TriggerEvent("qbx_medical:client:playerRevived")
end)
RegisterNetEvent("Pug:client:HolloweenActiveRealTimeLoop", function()
    while HalloweenEventStarted do
        Wait(1000)
        if HalloweenEventStarted then
            Config.FrameworkFunctions.TriggerCallback('Pug:Server:getLiveTimeHolloween', function(time)
                livetime = time
            end)
        else
            break
        end
    end
end)

RegisterNetEvent("Pug:HalloweenDisableAllControllPress", function(time)
	DisablingKeys = true
	TriggerEvent("Pug:TimeOutKeyPressTimerHalloween",time)
	while DisablingKeys do
		Wait(1)
		if DisablingKeys then
			DisableAllControlActions(0)
			EnableControlAction(0, 249, true) -- Added for talking while cuffed
			EnableControlAction(0, 46, true)  -- Added for talking while cuffed
		else
			break
		end
	end
end)

RegisterNetEvent("Pug:TimeOutKeyPressTimerHalloween", function(time)
	Wait(time)
	DisablingKeys = false
end)

RegisterNetEvent("Pug:client:TrickOrTreatHouseCoolDown", function(k)
	Wait(60000 * 8) -- Wait 8 minutes for the house to reset
	Config.TrickOrTeatHouses[k].GoneToThisHouse = false
end)
------------------------------

---------- [Threads] ----------
if Config.EnableTrickOrTreating then
	CreateThread(function()
		while true do
			Wait(1)
			local hours = GetClockHours()
			if hours <= 8 or hours >= 20 then
				local Close
				local MyCoords = GetEntityCoords(PlayerPedId())
				for k, v in pairs(Config.TrickOrTeatHouses) do
					if #(vector3(v.coords.x, v.coords.y, v.coords.z) - MyCoords) <= 5.0 then
						if not v.GoneToThisHouse then
							DrawText3Ds(v.coords.x, v.coords.y, v.coords.z, "~o~ [E] ~w~ Trick or treat")
							if IsControlJustPressed(0, 38) then
								Config.TrickOrTeatHouses[k].GoneToThisHouse = true
								TriggerEvent("Pug:client:TrickOrTreatHouseCoolDown", k)
								DoTrickOrTreatSequence(v.coords)
							end
						else
							DrawText3Ds(v.coords.x, v.coords.y, v.coords.z, "~r~ Come back tomorrow ~r~")
						end
						Close = true
					end
				end
				if not Close then
					Wait(2000)
				end
			else
				Wait(5000)
			end
		end
	end)
end

-- TESTING THREAD
CreateThread(function()
	-- local Coords = GetEntityCoords(PlayerPedId())
	-- PlaySoundFromCoord(-1, "SPAWN", Coords.x, Coords.y, Coords.z, "BARRY_01_SOUNDSET", 0, 0, 0)
	-- PlaySoundFromEntity(-1, "SPAWN", PlayerPedId(),"BARRY_01_SOUNDSET",false)
	-- local RandomZombieSound = ZombieSounds[math.random(1, #ZombieSounds)]
	-- TriggerEvent("InteractSound_CL:PlayOnOne", RandomZombieSound, 0.07)
	-- while not HasNamedPtfxAssetLoaded("core") do RequestNamedPtfxAsset("core") Wait(5) end
	-- UseParticleFxAssetNextCall("core")
	-- local Coords = GetEntityCoords(PlayerPedId())
	-- local DustEffect = StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_dust", Coords.x, Coords.y, Coords.z-1, 0.0, 0.0, GetEntityHeading(PlayerPedId())-180.0, 2.0, 0.0, 0.0, 0.0)
	-- PlayAmbientSpeech1(PlayerPedId(), 'GENERIC_HI', 'SPEECH_PARAMS_STANDARD')
	-- for _, ped in ipairs(GetGamePool('CPed')) do
	-- 	PlayPain(ped, 33, 0.0, false)
	-- end
end)
------------------------------

---------- [Exports] ----------
exports("HasHalloweenEventStarted", HasHalloweenEventStarted)


AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
		for k, v in pairs(ZombieNPC) do
			if DoesEntityExist(ZombieNPC[k].Ped) then
				if ZombieNPC[k] then
					TriggerEvent("FullyDeleteHollweenPeds",ZombieNPC[k].Ped)
				end
			end
		end
		if GetResourceState('cd_easytime') == 'started' then
			local data = {
				weather = "clear",
				hours = 9
			}
			TriggerServerEvent('cd_easytime:ForceUpdate', data)
		else
			TriggerServerEvent('qb-weathersync:server:setWeather', "clear")
			TriggerServerEvent("qb-weathersync:server:setTime", 9, 1)
		end
	end
end)