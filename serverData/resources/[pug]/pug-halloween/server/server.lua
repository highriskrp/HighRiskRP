---------- [Locals] ----------
HalloweenEventStarted = false
ShuttingDownEvent = false
-- SCOREBOARD locals 
First = {
	Name = " ",
	Kills = 0,
} 
Second = {
	Name = " ",
	Kills = 0,
}  
Third = {
	Name = " ",
	Kills = 0,
} 
local SelectedWeapon
------------------------------

---------- [Functions] ----------
local function ResetAllEventStats()
	ShuttingDownEvent = true
	Wait(10000)
	PlayerKills = {}
	First = {
		Name = " ",
		Kills = 0,
	} 
	Second = {
		Name = " ",
		Kills = 0,
	}  
	Third = {
		Name = " ",
		Kills = 0,
	}
	TriggerClientEvent("Pug:client:UpdateHalloweenScoreboardForEveryone", -1, First, Second, Third)
	ShuttingDownEvent = false
end

function FirstPlaceWinnerReward(source)
	local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
	if Player then
    	-- Player.AddItem(Halloween, amnt)
		Player.AddMoney(Config.MoneyRewardType, Config.FirstPlaceMoneyReward)
	end
	TriggerClientEvent('Pug:client:HalloweenNotify', src, 'YOU HAVE WON 1st PLACE!!!')
end

function SecondPlaceWinnerReward(source)
	local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
	if Player then
    	-- Player.AddItem(Halloween, amnt)
		Player.AddMoney(Config.MoneyRewardType, Config.SecondPlaceMoneyReward)
	end
	TriggerClientEvent('Pug:client:HalloweenNotify', src, 'YOU HAVE WON 2ND PLACE!!!')
end

function ThirdPlaceWinnerReward(source)
	local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
	if Player then
    	-- Player.AddItem(Halloween, amnt)
		Player.AddMoney(Config.MoneyRewardType, Config.ThirdPlaceMoneyReward)
	end
	TriggerClientEvent('Pug:client:HalloweenNotify', src, 'YOU HAVE WON 3RD PLACE!!!')
end

------------------------------

---------- [Events] ----------
RegisterServerEvent('Pug:server:CheckToEndHolloweenEvent', function(source)
	local src = source
	local TotalEventTimeInSeconds = math.ceil(Config.LengOfActiveEvent * 60)
	local TimeUpdate = 0
	while HalloweenEventStarted do
		Wait(1000)
		if HalloweenEventStarted then
			TimeUpdate = TimeUpdate + 1
			if TimeUpdate >= TotalEventTimeInSeconds then
				TriggerClientEvent('Pug:client:StartHalloweenEvent', -1, os.time())
				HalloweenEventStarted = false
				TriggerClientEvent('Pug:client:HalloweenNotify', -1, 'Event has finished')
				TriggerClientEvent('Pug:client:HalloweenChangeWeatherForServer', src, HalloweenEventStarted)
				UpdateScoreboard(true)
				ResetAllEventStats()
				break
			end
		else
			break
		end
	end
end)
RegisterNetEvent("Pug:server:GivePlayerHolooweenItem", function()
    local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
    if Player ~= nil then
		local RandomItem = math.random(1, #Config.RandomTrickOrTreatItem)
		local Amount = math.random(Config.RandomTrickOrTreatItem[RandomItem].AmountMin, Config.RandomTrickOrTreatItem[RandomItem].AmountMax)
		Player.AddItem(Config.RandomTrickOrTreatItem[RandomItem].Item, Amount)
		if Framework == "QBCore" then
			TriggerClientEvent('inventory:client:ItemBox', src, FWork.Shared.Items[Config.RandomTrickOrTreatItem[RandomItem].Item], "add", Amount)
		end
    end
end)
------------------------------

---------- [Callbacks] ----------
Config.FrameworkFunctions.CreateCallback('Pug:server:IsActiveHalloweenEventStarted', function(source, cb)
	local Data = {
		Started = HalloweenEventStarted,
		Time = os.time(),
		Weapon = SelectedWeapon,
	}
    cb(Data)
end)

Config.FrameworkFunctions.CreateCallback('Pug:Server:getLiveTimeHolloween', function(source, cb)
	cb(os.time())
end)
------------------------------

---------- [Commands] ----------
if Framework == "QBCore" then
	FWork.Commands.Add(Config.BeginHalloweenEventCommand, "Toggle Halloween Event on/off", { {name = "weapon", help = "Force weapon name. Leave blank to allow any weapon to be used."},  }, false, function(source, args)
		local src = source
		if not ShuttingDownEvent then
			if not HalloweenEventStarted then
				if args[1] then
					if FWork.Shared.Weapons[GetHashKey(args[1])] ~= nil then
						SelectedWeapon = args[1]
					else
						TriggerClientEvent('Pug:client:HalloweenNotify', src, "The "..args[1].. " is not in your qb-core/shared/weapons.lua")
						return
					end
				end
				TriggerClientEvent('Pug:client:StartHalloweenEvent', -1, os.time(), args[1])
				HalloweenEventStarted = true
				TriggerClientEvent('Pug:client:HalloweenNotify', src, "The event has been started. Get ready!", "success")
				TriggerClientEvent('Pug:client:HalloweenChangeWeatherForServer', src, HalloweenEventStarted)
				TriggerEvent("Pug:server:CheckToEndHolloweenEvent", src)
			else
				TriggerClientEvent('Pug:client:StartHalloweenEvent', -1, os.time(), args[1])
				HalloweenEventStarted = false
				SelectedWeapon = false
				TriggerClientEvent('Pug:client:HalloweenNotify', src, 'Event has been force ended.')
				TriggerClientEvent('Pug:client:HalloweenChangeWeatherForServer', src,HalloweenEventStarted)
				UpdateScoreboard(true)
				ResetAllEventStats()
			end
		else
			TriggerClientEvent('Pug:client:HalloweenNotify', src, 'An event is still shutting down and can take up to 10 seconds to finish.', 'error')
		end
	end,"admin")
else
	FWork.RegisterCommand(Config.BeginHalloweenEventCommand, 'admin', function(xPlayer, args)
		local src = xPlayer.source
		if not ShuttingDownEvent then
			if not HalloweenEventStarted then
				if args.weapon then
					if FWork.GetWeaponFromHash(GetHashKey(args.weapon)) ~= nil then
						SelectedWeapon = args.weapon
					else
						TriggerClientEvent('Pug:client:HalloweenNotify', src, "The "..args.weapon.. " is not in your ex_extended/Config.Weapons.lua")
						return
					end
				end
				TriggerClientEvent('Pug:client:StartHalloweenEvent', -1, os.time(), args.weapon)
				HalloweenEventStarted = true
				TriggerClientEvent('Pug:client:HalloweenNotify', src, "The event has been started. Get ready!", "success")
				TriggerClientEvent('Pug:client:HalloweenChangeWeatherForServer', src, HalloweenEventStarted)
				TriggerEvent("Pug:server:CheckToEndHolloweenEvent", src)
			else
				TriggerClientEvent('Pug:client:StartHalloweenEvent', -1, os.time(), args.weapon)
				HalloweenEventStarted = false
				SelectedWeapon = false
				TriggerClientEvent('Pug:client:HalloweenNotify', src, 'Event has been force ended.')
				TriggerClientEvent('Pug:client:HalloweenChangeWeatherForServer', src,HalloweenEventStarted)
				UpdateScoreboard(true)
				ResetAllEventStats()
			end
		else
			TriggerClientEvent('Pug:client:HalloweenNotify', src, 'An event is still shutting down and can take up to 10 seconds to finish.', 'error')
		end
	end, true, {help = 'Toggle Halloween Event on/off', validate = false, arguments = { {name = "weapon", help = "Force weapon name. Leave blank to allow any weapon to be used.", type = 'string'} }})
end
------------------------------