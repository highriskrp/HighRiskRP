
Config = {}
---------- [Framework] ----------
-- (DONT TOUCH THIS UNLESS YOU HAVE A CUSTOM FRAMEWORK)
if GetResourceState('es_extended') == 'started' then
    Framework = "ESX" -- (ESX) or (QBCore)
elseif GetResourceState('qb-core') == 'started' then
    Framework = "QBCore" -- (ESX) or (QBCore)
end
if Framework == "QBCore" then
    Config.CoreName = "qb-core" -- your core name
    FWork = exports[Config.CoreName]:GetCoreObject()
elseif Framework == "ESX" then
    Config.CoreName = "es_extended" -- your core name
    FWork = exports[Config.CoreName]:getSharedObject()
end
------------------------------
------------------------------
Config.Debug = false -- enables debug poly for zones and prints
------------------------------
------------------------------
Config.BeginHalloweenEventCommand = "halloween" -- Command to start the halloween zombie event.
Config.MoneyRewardType = "bank" -- Money type the player receives when they win first, second, or third. 
------------------------------
Config.ForcePlayersOnFeet = true -- Make this true if you want to force players to be on there feet and not be able to enter any vehicles.
Config.Optimization = true -- This was made for very high pop servers. If this is true it will wait every 5 seconds to update the scoreboard and it will make zombies spawn only client sided so everyone will only see their zombies only. 
Config.EnableTrickOrTreating = true -- Make this false if you want to disable trick or treating. (trick or treating is only available at night 8pm - 8am)
Config.DoOpeneingEventScene = true -- Make this false if you do not want the opening scene with camera effects to play when an event begins.
Config.UseSteamNames = false -- Make this true if you want to use steam names on the scoreboard instead of the characters first name.
Config.RemovePlayerFromEventWhenDies = false -- Make this true if you want to have the player be removed from the event when they die. (they will be revived and teleported to a random Config.RandomHospitalRepsawnLocation)
------------------------------
Config.LengOfActiveEvent = 15 -- Time in minutes that the halloween event will last for.
Config.HealthIncreaseToPlayerReward = 10 -- Health increase increment the player recieves every time they kill a zombie. (Default is set too 1 HP)
Config.CameraShakeIntensity = 0.15 -- Intensity of the players camera shake when a zombie does damage to them.
Config.DistanceZombiesSpawnFromPlayer = 60 -- The rough distance zombies spawn from the player.
Config.ChanceTheZombieDifficultyChanges = 10 -- % chance that the difficulty of zombie levels change every single time a new zombie spawns (its good to keep the odds low.)
Config.RandomAmmoToGiveWhenKillMin = 5 -- The minimum amount of ammo given to the players weapon rewarded every kill.
Config.RandomAmmoToGiveWhenKillMax = 10 -- The maximum amount of ammo given to the players weapon rewarded every kill.
------------------------------
Config.FirstPlaceMoneyReward = 2500 -- Ammount the first place winner receives 
Config.SecondPlaceMoneyReward = 1500 -- Ammount the second place winner receives 
Config.ThirdPlaceMoneyReward = 750 -- Ammount the third place winner receives 
------------------------------
Config.RandomZombiePedModle = { -- Random zombie models that can spawn
    "u_m_y_zombie_01",
}
------------------------------
Config.RandomTickOrTreatPed = { -- Random trick or treat models that can spawn
    "a_f_o_ktown_01",
    "a_f_m_soucent_01",
    "cs_mrsphillips",
    "a_m_m_eastsa_02",
    "a_m_y_genstreet_02",
    "a_m_y_gay_02",
}
------------------------------
Config.RandomTrickOrTreatItem = { -- Random trick or treat item the player gets
    [1] = { -- Add as many items as you like
        Item = "donuttouch", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 3, -- Maximum amount of the item the player can get
    },
    [2] = { -- Add as many items as you like
        Item = "bands", -- Random item to receive when trick or treating
        AmountMin = 5, -- Minimum amount of the item the player can get
        AmountMax = 10, -- Maximum amount of the item the player can get
    },
    [3] = { -- Add as many items as you like
        Item = "jollyranchers", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 3, -- Maximum amount of the item the player can get
    },
    [4] = { -- Add as many items as you like
        Item = "spliff", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
    [5] = { -- Add as many items as you like
        Item = "sucker", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
    [6] = { -- Add as many items as you like
        Item = "bandages", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
    [7] = { -- Add as many items as you like
        Item = "lockpick", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
    [8] = { -- Add as many items as you like
        Item = "egg", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
    [9] = { -- Add as many items as you like
        Item = "cryptostick", -- Random item to receive when trick or treating
        AmountMin = 1, -- Minimum amount of the item the player can get
        AmountMax = 2, -- Maximum amount of the item the player can get
    },
}

------------------------------
Config.ZombieDifficulty = { -- Zombie difficulty levels
    [1] = {
        TimeRateOfZombiesSpawn = 4, -- Time in seconds new zombies spawn
        RunSpeedOfZombies = 1.0, -- The run speed of the zombies at this tier (1.0, 2.0, and 3.0 are perfect tiers of speed)
        HowManyZombiesSpawnAtOnce = 2, -- The amount of zombies that spawn at a time every (TimeRateOfZombiesSpawn) at this tier
    },
    [2] = {
        TimeRateOfZombiesSpawn = 3, -- Time in seconds new zombies spawn
        RunSpeedOfZombies = 2.0, -- The run speed of the zombies at this tier (1.0, 2.0, and 3.0 are perfect tiers of speed)
        HowManyZombiesSpawnAtOnce = 2, -- The amount of zombies that spawn at a time every (TimeRateOfZombiesSpawn) at this tier
    },
    [3] = {
        TimeRateOfZombiesSpawn = 1, -- Time in seconds new zombies spawn
        RunSpeedOfZombies = 3.0, -- The run speed of the zombies at this tier (1.0, 2.0, and 3.0 are perfect tiers of speed)
        HowManyZombiesSpawnAtOnce = 2, -- The amount of zombies that spawn at a time every (TimeRateOfZombiesSpawn) at this tier
    },
}
------------------------------
Config.RandomHospitalRepsawnLocation = { -- Random player respawn locations if they die
    -- 4 random spawns at the davos ave hospital
    vector4(303.37, -1435.43, 29.8, 117.1),
    vector4(310.0, -1439.83, 29.8, 122.29),
    vector4(296.74, -1447.75, 29.97, 324.66),
    vector4(293.33, -1445.36, 29.97, 351.36),
    -- 4 random spawns at the pillbox hospital
    vector4(299.82, -579.27, 43.26, 98.66),
    vector4(296.24, -591.0, 43.27, 51.25),
    vector4(299.24, -571.98, 43.26, 131.1),
    vector4(299.21, -582.65, 43.26, 76.41),
}
------------------------------
------------------------------
--## DONT CHANGE ANY OF THESE ##--
Config.FrameworkFunctions = {
    -- Client-side trigger callback
    TriggerCallback = function(...)
        if Framework == 'QBCore' then
            FWork.Functions.TriggerCallback(...)
        else
            FWork.TriggerServerCallback(...)
        end
    end,

    -- Server-side register callback
    CreateCallback = function(...)
        if Framework == 'QBCore' then
            FWork.Functions.CreateCallback(...)
        else
            FWork.RegisterServerCallback(...)
        end
    end,

    -- Server-side get player data
    GetPlayer = function(source)
        if Framework == 'QBCore' then
            local self = {}
            local player = nil
            player = FWork.Functions.GetPlayer(source)

            if(player ~= nil) then
                self.source = source
                self.PlayerData = { charinfo = { firstname = player.PlayerData.charinfo.firstname }}
                self.AddMoney = function(currency, amount) 
                    player.Functions.AddMoney(currency, amount)
                end
                self.RemoveMoney = function(currency, amount) 
                    player.Functions.RemoveMoney(currency, amount)
                end

                self.RemoveItem = function(item, amount) 
                    player.Functions.RemoveItem(item, amount, false)
                end

                self.AddItem = function(item, amount, bool, info) 
                    player.Functions.AddItem(item, amount, false, info)
                end


                return self
            end
        else
            local self = {}
            local player = nil
            player = FWork.GetPlayerFromId(source)

            if (player ~= nil) then
                self.source = source
                self.PlayerData = { charinfo = { firstname = player.get('firstName')}}
                self.AddMoney = function(currency, amount) 
                    player.addMoney(amount)
                end
                self.RemoveMoney = function(currency, amount) 
                    player.removeMoney(amount)
                end

                self.RemoveItem = function(item, amount) 
                    player.removeInventoryItem(item, amount)
                end

                self.AddItem = function(item, amount, bool, info)
                    player.addInventoryItem(item, amount, false, info)
                end

                return self
            end
        end

        return nil
    end,
}

Config.TrickOrTeatHouses = {
    ["grove1"] = {
        GoneToThisHouse = false,
        coords = vector4(-50.33,-1783.26,28.3,319.63),
    },
    ["grove2"] = {
        GoneToThisHouse = false,
        coords = vector4(-42.07,-1792.12,27.83,315.32),
    },
    ["grove3"] = {
        GoneToThisHouse = false,
        coords = vector4(21.25,-1844.82,24.6,235.12),
    },
    ["grove4"] = {
        GoneToThisHouse = false,
        coords = vector4(30.02,-1854.71,24.07,227.94),
    },
    ["grove5"] = {
        GoneToThisHouse = false,
        coords = vector4(45.93,-1864.11,23.28,312.49),
    },
    ["grove6"] = {
        GoneToThisHouse = false,
        coords = vector4(54.36,-1873.1,22.81,315.38),
    },
    ["grove7"] = {
        GoneToThisHouse = false,
        coords = vector4(101.0,-1912.23,21.41,332.88),
    },
    ["grove8"] = {
        GoneToThisHouse = false,
        coords = vector4(118.37,-1921.08,21.32,230.48),
    },
    ["grove9"] = {
        GoneToThisHouse = false,
        coords = vector4(126.81,-1929.99,21.38,218.18),
    },
    ["grove10"] = {
        GoneToThisHouse = false,
        coords = vector4(114.43,-1961.18,21.33,198.06),
    },
    ["grove11"] = {
        GoneToThisHouse = false,
        coords = vector4(85.82,-1959.75,21.12,230.36),
    },
    ["grove12"] = {
        GoneToThisHouse = false,
        coords = vector4(76.35,-1948.06,21.17,48.29),
    },
    ["grove13"] = {
        GoneToThisHouse = false,
        coords = vector4(72.07,-1939.07,21.37,136.18),
    },
    ["grove14"] = {
        GoneToThisHouse = false,
        coords = vector4(56.56,-1922.84,21.91,141.75),
    },    
    ["grove15"] = {
        GoneToThisHouse = false,
        coords = vector4(38.96,-1911.49,21.95,51.27),
    },
    ["grove16"] = {
        GoneToThisHouse = false,
        coords = vector4(22.99,-1896.87,22.97,140.22),
    },
    ["grove17"] = {
        GoneToThisHouse = false,
        coords = vector4(5.25,-1884.33,23.7,249.05),
    },
    ["grove18"] = {
        GoneToThisHouse = false,
        coords = vector4(-4.76,-1872.15,24.15,240.13),
    },
    ["grove19"] = {
        GoneToThisHouse = false,
        coords = vector4(-20.53,-1859.06,25.41,252.5),
    },
    ["grove20"] = {
        GoneToThisHouse = false,
        coords = vector4(-34.2,-1847.07,26.19,58.43),
    },      
    ["forum1"] = {
        GoneToThisHouse = false,
        coords = vector4(-161.21,-1638.82,34.03,146.81),
    },
    ["forum2"] = {
        GoneToThisHouse = false,
        coords = vector4(-159.96,-1636.22,34.03,320.64),
    },
    ["forum3"] = {
        GoneToThisHouse = false,
        coords = vector4(-153.51,-1641.12,36.85,322.36),
    },
    ["forum4"] = {
        GoneToThisHouse = false,
        coords = vector4(-161.72,-1638.38,37.25,140.26),
    },
    ["forum5"] = {
        GoneToThisHouse = false,
        coords = vector4(-159.98,-1636.32,37.25,322.86),
    },
    ["forum6"] = {
        GoneToThisHouse = false,
        coords = vector4(-151.37,-1622.37,33.65,50.17),
    },
    ["forum7"] = {
        GoneToThisHouse = false,
        coords = vector4(-150.27,-1625.62,33.66,235.67),
    },
    ["forum8"] = {
        GoneToThisHouse = false,
        coords = vector4(-144.99,-1618.58,36.05,238.69),
    },
    ["forum9"] = {
        GoneToThisHouse = false,
        coords = vector4(-146.1,-1614.66,36.05,70.13),
    },
    ["forum10"] = {
        GoneToThisHouse = false,
        coords = vector4(-152.49,-1624.02,36.85,50.22),
    },
    ["forum11"] = {
        GoneToThisHouse = false,
        coords = vector4(-150.24,-1625.58,36.85,237.61),
    },
    ["forum13"] = {
        GoneToThisHouse = false,
        coords = vector4(-114.35,-1659.79,32.56,230.22),
    },
    ["forum14"] = {
        GoneToThisHouse = false,
        coords = vector4(-121.17,-1653.2,32.56,316.23),
    },["forum15"] = {
        GoneToThisHouse = false,
        coords = vector4(-121.17,-1653.19,32.56,318.3),
    },
    ["forum16"] = {
        GoneToThisHouse = false,
        coords = vector4(-129.07,-1647.38,33.3,51.88),
    },
    ["forum17"] = {
        GoneToThisHouse = false,
        coords = vector4(-138.75,-1658.91,33.34,57.22),
    },
    ["forum18"] = {
        GoneToThisHouse = false,
        coords = vector4(-131.58,-1665.63,32.56,143.58),
    },
    ["forum19"] = {
        GoneToThisHouse = false,
        coords = vector4(-123.93,-1671.23,32.56,224.97),
    },
    ["forum20"] = {
        GoneToThisHouse = false,
        coords = vector4(-114.28,-1659.72,35.71,228.26),
    },
    ["forum21"] = {
        GoneToThisHouse = false,
        coords = vector4(-121.14,-1653.22,35.71,320.52),
    },
    ["forum22"] = {
        GoneToThisHouse = false,
        coords = vector4(-128.98,-1647.31,36.51,56.24),
    },
    ["forum23"] = {
        GoneToThisHouse = false,
        coords = vector4(-107.47,-1651.47,34.88,233.41),
    },
    ["forum24"] = {
        GoneToThisHouse = false,
        coords = vector4(-130.9,-1679.48,34.91,232.44),
    },
    ["forum25"] = {
        GoneToThisHouse = false,
        coords = vector4(-124.02,-1671.18,35.71,229.95),
    },
    ["forum26"] = {
        GoneToThisHouse = false,
        coords = vector4(-131.54,-1665.64,35.71,137.33),
    },
    ["forum27"] = {
        GoneToThisHouse = false,
        coords = vector4(-138.73,-1658.92,36.51,52.67),
    },
    ["forum28"] = {
        GoneToThisHouse = false,
        coords = vector4(-109.68,-1628.48,32.91,52.32),
    },
    ["forum29"] = {
        GoneToThisHouse = false,
        coords = vector4(-105.62,-1632.65,32.91,135.9),
    },
    ["forum30"] = {
        GoneToThisHouse = false,
        coords = vector4(-97.15,-1639.15,32.1,226.01),
    },
    ["forum31"] = {
        GoneToThisHouse = false,
        coords = vector4(-89.43,-1630.03,31.51,231.52),
    },
    ["forum32"] = {
        GoneToThisHouse = false,
        coords = vector4(-83.56,-1623.0,31.48,228.73),
    },
    ["forum33"] = {
        GoneToThisHouse = false,
        coords = vector4(-80.28,-1607.85,31.48,314.42),
    },
    ["forum34"] = {
        GoneToThisHouse = false,
        coords = vector4(-87.93,-1601.39,32.31,319.35),
    },
    ["forum35"] = {
        GoneToThisHouse = false,
        coords = vector4(-93.62,-1607.19,32.31,51.5),
    },
    ["forum36"] = {
        GoneToThisHouse = false,
        coords = vector4(-97.86,-1612.28,32.31,55.24),
    },
    ["forum37"] = {
        GoneToThisHouse = false,
        coords = vector4(-109.67,-1628.59,36.29,45.66),
    },
    ["forum38"] = {
        GoneToThisHouse = false,
        coords = vector4(-105.57,-1632.58,36.29,139.67),
    },
    ["forum39"] = {
        GoneToThisHouse = false,
        coords = vector4(-98.42,-1638.65,35.48,140.34),
    },
    ["forum40"] = {
        GoneToThisHouse = false,
        coords = vector4(-97.04,-1639.07,35.49,230.22),
    },
    ["forum41"] = {
        GoneToThisHouse = false,
        coords = vector4(-89.45,-1630.01,34.69,221.76),
    },
    ["forum42"] = {
        GoneToThisHouse = false,
        coords = vector4(-83.59,-1623.1,34.69,236.07),
    },
    ["forum43"] = {
        GoneToThisHouse = false,
        coords = vector4(-80.29,-1607.81,34.69,312.12),
    },
    ["forum44"] = {
        GoneToThisHouse = false,
        coords = vector4(-87.87,-1601.37,35.49,318.11),
    },
    ["forum45"] = {
        GoneToThisHouse = false,
        coords = vector4(-93.66,-1607.26,35.49,48.12),
    },
    ["forum46"] = {
        GoneToThisHouse = false,
        coords = vector4(-97.83,-1612.36,35.49,49.85),
    },
    ["forum47"] = {
        GoneToThisHouse = false,
        coords = vector4(-118.74,-1586.06,34.21,230.0),
    },
    ["forum48"] = {
        GoneToThisHouse = false,
        coords = vector4(-114.1,-1579.56,34.18,314.56),
    },
    ["forum49"] = {
        GoneToThisHouse = false,
        coords = vector4(-120.05,-1574.56,34.18,326.38),
    },
    ["forum50"] = {
        GoneToThisHouse = false,
        coords = vector4(-134.4,-1580.42,34.21,49.13),
    },
    ["forum51"] = {
        GoneToThisHouse = false,
        coords = vector4(-140.25,-1587.36,34.24,49.62),
    },
    ["forum52"] = {
        GoneToThisHouse = false,
        coords = vector4(-147.87,-1596.42,34.83,51.67),
    },
    ["forum53"] = {
        GoneToThisHouse = false,
        coords = vector4(-140.29,-1599.57,34.83,159.67),
    },
    ["forum54"] = {
        GoneToThisHouse = false,
        coords = vector4(-123.03,-1591.22,34.21,234.94),
    },
    ["forum55"] = {
        GoneToThisHouse = false,
        coords = vector4(-140.38,-1599.64,38.21,162.57),
    },
    ["forum56"] = {
        GoneToThisHouse = false,
        coords = vector4(-147.21,-1597.11,38.21,163.65),
    },
    ["forum57"] = {
        GoneToThisHouse = false,
        coords = vector4(-147.69,-1596.25,38.21,56.35),
    },
    ["forum58"] = {
        GoneToThisHouse = false,
        coords = vector4(-140.23,-1587.37,37.41,53.8),
    },
    ["forum59"] = {
        GoneToThisHouse = false,
        coords = vector4(-134.35,-1580.35,37.41,55.99),
    },
    ["forum60"] = {
        GoneToThisHouse = false,
        coords = vector4(-119.94,-1574.45,37.41,321.47),
    },
    ["forum61"] = {
        GoneToThisHouse = false,
        coords = vector4(-113.98,-1579.47,37.41,322.07),
    },
    ["forum62"] = {
        GoneToThisHouse = false,
        coords = vector4(-118.77,-1586.09,37.41,232.38),
    },
    ["forum63"] = {
        GoneToThisHouse = false,
        coords = vector4(-123.07,-1591.22,37.41,233.59),
    },
    ["vespucci1"] = {
        GoneToThisHouse = false,
        coords = vector4(-1116.94,-1505.51,4.39,36.1),
    },
    ["vespucci2"] = {
        GoneToThisHouse = false,
        coords = vector4(-1110.98,-1497.94,4.67,33.75),
    },
    ["vespucci3"] = {
        GoneToThisHouse = false,
        coords = vector4(-1102.48,-1491.89,4.89,36.64),
    },
    ["vespucci4"] = {
        GoneToThisHouse = false,
        coords = vector4(-1090.96,-1485.11,5.31,33.39),
    },
    ["vespucci5"] = {
        GoneToThisHouse = false,
        coords = vector4(-1085.87,-1503.97,5.71,214.45),
    },
    ["vespucci6"] = {
        GoneToThisHouse = false,
        coords = vector4(-1090.88,-1517.25,4.84,307.26),
    },
    ["vespucci7"] = {
        GoneToThisHouse = false,
        coords = vector4(-1084.37,-1559.33,4.78,213.94),
    },
    ["vespucci8"] = {
        GoneToThisHouse = false,
        coords = vector4(-1076.91,-1553.98,4.63,219.98),
    },
    ["vespucci9"] = {
        GoneToThisHouse = false,
        coords = vector4(-1065.89,-1545.86,4.9,210.7),
    },
    ["vespucci10"] = {
        GoneToThisHouse = false,
        coords = vector4(-1057.88,-1540.84,5.06,217.16),
    },
    ["vespucci11"] = {
        GoneToThisHouse = false,
        coords = vector4(-1032.16,-1582.55,5.27,301.3),
    },
    ["vespucci12"] = {
        GoneToThisHouse = false,
        coords = vector4(-1043.28,-1580.46,5.04,211.59),
    },
    ["vespucci13"] = {
        GoneToThisHouse = false,
        coords = vector4(-1049.17,-1581.12,4.98,123.52),
    },
    ["vespucci15"] = {
        GoneToThisHouse = false,
        coords = vector4(-1065.13,-1586.14,4.43,310.06),
    },
    ["vespucci16"] = {
        GoneToThisHouse = false,
        coords = vector4(-1135.18,-1468.23,4.62,304.14),
    },
    ["vespucci17"] = {
        GoneToThisHouse = false,
        coords = vector4(-1142.36,-1461.12,4.63,45.25),
    },
    ["vespucci18"] = {
        GoneToThisHouse = false,
        coords = vector4(-1146.24,-1466.41,4.5,126.03),
    },
    ["vespucci19"] = {
        GoneToThisHouse = false,
        coords = vector4(-1146.3,-1466.46,7.73,127.82),
    },
    ["vespucci20"] = {
        GoneToThisHouse = false,
        coords = vector4(-1142.31,-1461.03,7.7,32.84),
    },
    ["vespucci21"] = {
        GoneToThisHouse = false,
        coords = vector4(-1136.49,-1466.23,7.79,298.88),
    },
    ["stabbcity1"] = {
        GoneToThisHouse = false,
        coords = vector4(97.84, 3682.05, 39.74, 183.37),
    },
    ["stabbcity2"] = {
        GoneToThisHouse = false,
        coords = vector4(105.65, 3728.65, 40.46, 302.53),
    },
    ["stabbcity3"] = {
        GoneToThisHouse = false,
        coords = vector4(78.05, 3732.5, 40.45, 143.72),
    },
    ["stabbcity4"] = {
        GoneToThisHouse = false,
        coords = vector4(76.19, 3757.24, 39.75, 98.88),
    },
    ["stabbcity5"] = {
        GoneToThisHouse = false,
        coords = vector4(52.05, 3742.14, 40.28, 11.02),
    },
    ["stabbcity6"] = {
        GoneToThisHouse = false,
        coords = vector4(30.9, 3736.22, 40.63, 312.33),
    },
    ["stabbcity7"] = {
        GoneToThisHouse = false,
        coords = vector4(9.94, 3698.09, 39.61, 219.94),
    },
    ["stabbcity8"] = {
        GoneToThisHouse = false,
        coords = vector4(15.29, 3688.86, 40.18, 27.2),
    },
    ["stabbcity9"] = {
        GoneToThisHouse = false,
        coords = vector4(22.71, 3671.98, 39.76, 233.38),
    },
    ["stabbcity10"] = {
        GoneToThisHouse = false,
        coords = vector4(47.81, 3701.98, 40.72, 154.59),
    },
    ["stabbcity11"] = {
        GoneToThisHouse = false,
        coords = vector4(68.02, 3693.19, 40.63, 238.17),
    },
    ["stabbcity12"] = {
        GoneToThisHouse = false,
        coords = vector4(84.68, 3718.02, 40.33, 236.96),
    },
    ["sandy1"] = {
        GoneToThisHouse = false,
        coords = vector4(1968.26, 3812.31, 33.46, 20.82),
    },
    ["sandy2"] = {
        GoneToThisHouse = false,
        coords = vector4(1943.6, 3804.49, 32.04, 126.24),
    },
    ["sandy3"] = {
        GoneToThisHouse = false,
        coords = vector4(1932.9, 3804.94, 32.91, 299.25),
    },
    ["sandy4"] = {
        GoneToThisHouse = false,
        coords = vector4(1925.09, 3824.79, 32.44, 30.95),
    },
    ["sandy5"] = {
        GoneToThisHouse = false,
        coords = vector4(1936.55, 3891.71, 32.97, 19.89),
    },
    ["sandy6"] = {
        GoneToThisHouse = false,
        coords = vector4(1915.83, 3909.28, 33.44, 62.11),
    },
    ["sandy7"] = {
        GoneToThisHouse = false,
        coords = vector4(1888.82, 3927.87, 33.64, 116.63),
    },
    ["sandy8"] = {
        GoneToThisHouse = false,
        coords = vector4(1880.5, 3920.76, 33.22, 271.96),
    },
    ["sandy9"] = {
        GoneToThisHouse = false,
        coords = vector4(1894.28, 3896.07, 33.18, 33.43),
    },
    ["sandy10"] = {
        GoneToThisHouse = false,
        coords = vector4(1898.98, 3875.8, 32.75, 31.79),
    },
    ["sandy11"] = {
        GoneToThisHouse = false,
        coords = vector4(1902.32, 3866.97, 33.07, 24.0),
    },
    ["sandy12"] = {
        GoneToThisHouse = false,
        coords = vector4(1841.85, 3928.61, 33.72, 12.46),
    },
    ["sandy13"] = {
        GoneToThisHouse = false,
        coords = vector4(1845.76, 3914.5, 33.47, 101.36),
    },
    ["sandy14"] = {
        GoneToThisHouse = false,
        coords = vector4(1859.34, 3865.14, 33.06, 106.44),
    },
    ["sandy15"] = {
        GoneToThisHouse = false,
        coords = vector4(1834.46, 3863.47, 34.3, 290.8),
    },
    ["sandy16"] = {
        GoneToThisHouse = false,
        coords = vector4(1813.55, 3854.02, 34.35, 217.33),
    },
    ["sandy17"] = {
        GoneToThisHouse = false,
        coords = vector4(1781.62, 3911.23, 34.91, 199.59),
    },
    ["sandy18"] = {
        GoneToThisHouse = false,
        coords = vector4(1880.67, 3810.52, 32.78, 117.89),
    },
    ["sandy19"] = {
        GoneToThisHouse = false,
        coords = vector4(1848.23, 3786.68, 33.53, 123.83),
    },
    ["sandy20"] = {
        GoneToThisHouse = false,
        coords = vector4(1898.99, 3781.68, 32.88, 118.68),
    },
    ["sandy21"] = {
        GoneToThisHouse = false,
        coords = vector4(1875.72, 3778.66, 32.81, 308.62),
    },
    ["sandy22"] = {
        GoneToThisHouse = false,
        coords = vector4(1826.76, 3729.63, 33.96, 37.82),
    },
    ["sandy23"] = {
        GoneToThisHouse = false,
        coords = vector4(1777.36, 3738.29, 34.66, 292.66),
    },
    ["sandy24"] = {
        GoneToThisHouse = false,
        coords = vector4(1748.79, 3783.61, 34.83, 298.37),
    },
    ["sandy25"] = {
        GoneToThisHouse = false,
        coords = vector4(1742.55, 3804.47, 35.12, 31.02),
    },
    ["sandy26"] = {
        GoneToThisHouse = false,
        coords = vector4(1777.58, 3799.87, 34.53, 302.34),
    },
    ["sandy27"] = {
        GoneToThisHouse = false,
        coords = vector4(1760.28, 3821.5, 34.77, 208.67),
    },
    ["sandy28"] = {
        GoneToThisHouse = false,
        coords = vector4(1733.49, 3808.62, 35.12, 217.73),
    },
    ["sandy29"] = {
        GoneToThisHouse = false,
        coords = vector4(1728.63, 3851.73, 34.78, 34.46),
    },
    ["sandy30"] = {
        GoneToThisHouse = false,
        coords = vector4(1744.31, 3887.04, 35.54, 25.91),
    },
    ["sandy31"] = {
        GoneToThisHouse = false,
        coords = vector4(1733.39, 3895.23, 35.56, 223.43),
    },
    ["sandy32"] = {
        GoneToThisHouse = false,
        coords = vector4(1699.94, 3866.74, 34.9, 128.49),
    },
    ["sandy33"] = {
        GoneToThisHouse = false,
        coords = vector4(1691.76, 3865.82, 34.91, 213.96),
    },
    ["sandy34"] = {
        GoneToThisHouse = false,
        coords = vector4(1655.15, 3820.52, 35.45, 212.42),
    },
    ["sandy35"] = {
        GoneToThisHouse = false,
        coords = vector4(1687.61, 3755.78, 34.57, 321.17),
    },
    ["sandy36"] = {
        GoneToThisHouse = false,
        coords = vector4(1639.25, 3731.13, 35.07, 122.74),
    },
    ["sandy37"] = {
        GoneToThisHouse = false,
        coords = vector4(1632.56, 3719.4, 35.05, 322.11),
    },
    ["sandy38"] = {
        GoneToThisHouse = false,
        coords = vector4(1532.82, 3722.32, 34.82, 201.13),
    },
    ["sandy39"] = {
        GoneToThisHouse = false,
        coords = vector4(1501.56, 3695.08, 35.21, 279.93),
    },
    ["sandy40"] = {
        GoneToThisHouse = false,
        coords = vector4(1425.69, 3669.57, 34.83, 193.45),
    },
    ["sandy41"] = {
        GoneToThisHouse = false,
        coords = vector4(1435.41, 3657.14, 34.4, 107.55),
    },
    ["sandy42"] = {
        GoneToThisHouse = false,
        coords = vector4(1436.2, 3639.08, 34.95, 205.07),
    },
    ["sandy43"] = {
        GoneToThisHouse = false,
        coords = vector4(1433.85, 3628.52, 35.75, 11.14),
    },
    ["sandy44"] = {
        GoneToThisHouse = false,
        coords = vector4(1412.97, 3663.92, 34.41, 109.45),
    },
    ["sandy45"] = {
        GoneToThisHouse = false,
        coords = vector4(1385.24, 3659.53, 34.93, 199.9),
    },
    ["sandy46"] = {
        GoneToThisHouse = false,
        coords = vector4(1394.61, 3649.43, 34.68, 18.84),
    },
    ["sandy47"] = {
        GoneToThisHouse = false,
        coords = vector4(1394.61, 3649.43, 34.68, 18.84),
    },
    ["va1"] = {
        GoneToThisHouse = false,
        coords = vector4(-1114.09, -1579.72, 8.68, 218.06),
    },
    ["va2"] = {
        GoneToThisHouse = false,
        coords = vector4(-1112.21, -1578.4, 8.68, 212.75),
    },
    ["va3"] = {
        GoneToThisHouse = false,
        coords = vector4(-1114.7, -1577.63, 4.54, 211.18),
    },
    ["vinewood1"] = {
        GoneToThisHouse = false,
        coords = vector4(-311.68, 474.85, 111.82, 302.96),
    },
    ["vinewood2"] = {
        GoneToThisHouse = false,
        coords = vector4(-1052.15, 432.65, 77.26, 10.39),
    },
    ["vinewood3"] = {
        GoneToThisHouse = false,
        coords = vector4(-1094.89, 427.46, 75.88, 83.92),
    },
    ["vinewood4"] = {
        GoneToThisHouse = false,
        coords = vector4(-1087.53, 479.35, 77.57, 232.92),
    },
    ["vinewood5"] = {
        GoneToThisHouse = false,
        coords = vector4(-1122.7, 486.29, 82.36, 344.53),
    },
    ["vinewood6"] = {
        GoneToThisHouse = false,
        coords = vector4(-1158.92, 481.84, 86.09, 3.63),
    },
    ["vinewood7"] = {
        GoneToThisHouse = false,
        coords = vector4(-1174.42, 440.23, 86.85, 264.1),
    },
    ["vinewood8"] = {
        GoneToThisHouse = false,
        coords = vector4(-1215.86, 457.84, 92.06, 184.11),
    },
    ["vinewood9"] = {
        GoneToThisHouse = false,
        coords = vector4(-1258.77, 446.74, 94.74, 124.49),
    },
    ["vinewood10"] = {
        GoneToThisHouse = false,
        coords = vector4(-1294.32, 454.36, 97.57, 173.76),
    },
    ["vinewood11"] = {
        GoneToThisHouse = false,
        coords = vector4(-1308.01, 448.99, 100.97, 179.53),
    },
    ["vinewood12"] = {
        GoneToThisHouse = false,
        coords = vector4(-1371.45, 444.04, 105.86, 254.98),
    },
    ["vinewood13"] = {
        GoneToThisHouse = false,
        coords = vector4(-1343.05, 481.23, 102.76, 273.3),
    },
    ["vinewood14"] = {
        GoneToThisHouse = false,
        coords = vector4(-1413.51, 462.17, 109.21, 157.92),
    },
    ["vinewood15"] = {
        GoneToThisHouse = false,
        coords = vector4(-1405.45, 526.89, 123.83, 264.67),
    },
    ["vinewood16"] = {
        GoneToThisHouse = false,
        coords = vector4(-1452.95, 545.63, 121.0, 73.8),
    },
    ["vinewood17"] = {
        GoneToThisHouse = false,
        coords = vector4(-1453.88, 512.23, 117.8, 188.07),
    },
    ["vinewood18"] = {
        GoneToThisHouse = false,
        coords = vector4(-1500.66, 523.19, 118.27, 31.7),
    },
    ["vinewood19"] = {
        GoneToThisHouse = false,
        coords = vector4(-1495.77, 437.0, 112.5, 223.23),
    },
    ["vinewood20"] = {
        GoneToThisHouse = false,
        coords = vector4(-1540.03, 420.5, 110.01, 179.99),
    },
    ["vinewood21"] = {
        GoneToThisHouse = false,
        coords = vector4(-1405.08, 562.0, 125.41, 357.67),
    },
    ["vinewood22"] = {
        GoneToThisHouse = false,
        coords = vector4(-1346.45, 560.6, 130.53, 228.52),
    },
    ["vinewood23"] = {
        GoneToThisHouse = false,
        coords = vector4(-1364.47, 570.1, 134.97, 67.38),
    },
    ["vinewood24"] = {
        GoneToThisHouse = false,
        coords = vector4(-1367.42, 610.62, 133.88, 101.2),
    },
    ["vinewood25"] = {
        GoneToThisHouse = false,
        coords = vector4(-1337.04, 606.27, 134.38, 271.78),
    },
    ["mirror1"] = {
        GoneToThisHouse = false,
        coords = vector4(1114.47, -391.21, 68.95, 245),
    },
    ["mirror2"] = {
        GoneToThisHouse = false,
        coords = vector4(1101.06, -411.33, 67.56, 268),
    },
    ["mirror3"] = {
        GoneToThisHouse = false,
        coords = vector4(1099.47, -438.64, 67.79, 169),
    },
    ["mirror4"] = {
        GoneToThisHouse = false,
        coords = vector4(1098.52, -464.52, 67.32, 340),
    },
    ["mirror5"] = {
        GoneToThisHouse = false,
        coords = vector4(1090.42, -484.40, 65.66, 253),
    },
    ["mirror6"] = {
        GoneToThisHouse = false,
        coords = vector4(1056.25, -448.92, 66.26, 167),
    },
    ["mirror7"] = {
        GoneToThisHouse = false,
        coords = vector4(1051.04, -470.58, 64.30, 78),
    },
    ["mirror8"] = {
        GoneToThisHouse = false,
        coords = vector4(1046.25, -498.14, 64.27, 168),
    },
    ["mirror9"] = {
        GoneToThisHouse = false,
        coords = vector4(1006.43, -510.90, 60.99, 297),
    },
    ["mirror10"] = {
        GoneToThisHouse = false,
        coords = vector4(987.84, -525.76, 60.69, 30),
    },
    ["mirror11"] = {
        GoneToThisHouse = false,
        coords = vector4(965.30, -541.90, 59.73, 26),
    },
    ["mirror12"] = {
        GoneToThisHouse = false,
        coords = vector4(919.76, -569.61, 58.37, 26),
    },
    ["mirror13"] = {
        GoneToThisHouse = false,
        coords = vector4(893.12, -540.56, 58.51, 298),
    },
    ["mirror14"] = {
        GoneToThisHouse = false,
        coords = vector4(924.50, -525.99, 59.79, 206),
    },
    ["mirror15"] = {
        GoneToThisHouse = false,
        coords = vector4(945.76, -519.06, 60.82, 115),
    },
    ["mirror16"] = {
        GoneToThisHouse = false,
        coords = vector4(970.43, -502.37, 62.14, 243),
    },
    ["mirror17"] = {
        GoneToThisHouse = false,
        coords = vector4(1014.61, -469.34, 64.50, 216),
    },
    ["mirror18"] = {
        GoneToThisHouse = false,
        coords = vector4(1044.42, -448.99, 66.26, 261),
    },
    ["mirror19"] = {
        GoneToThisHouse = false,
        coords = vector4(1028.74, -408.39, 66.34, 32),
    },
    ["mirror20"] = {
        GoneToThisHouse = false,
        coords = vector4(1010.51, -423.41, 65.35, 119),
    },
    ["mirror21"] = {
        GoneToThisHouse = false,
        coords = vector4(987.50, -432.98, 64.05, 37),
    },
    ["mirror22"] = {
        GoneToThisHouse = false,
        coords = vector4(967.17, -451.56, 62.79, 33),
    },
    ["mirror23"] = {
        GoneToThisHouse = false,
        coords = vector4(944.46, -463.23, 61.55, 302),
    },
    ["mirror24"] = {
        GoneToThisHouse = false,
        coords = vector4(921.78, -477.90, 61.08, 27),
    },
    ["mirror25"] = {
        GoneToThisHouse = false,
        coords = vector4(906.18, -489.52, 59.44, 21),
    },
    ["mirror26"] = {
        GoneToThisHouse = false,
        coords = vector4(878.40, -497.92, 58.09, 39),
    },
    ["mirror27"] = {
        GoneToThisHouse = false,
        coords = vector4(861.54, -508.99, 57.72, 44),
    },
    ["mirror28"] = {
        GoneToThisHouse = false,
        coords = vector4(850.27, -532.69, 57.93, 83),
    },
    ["mirror29"] = {
        GoneToThisHouse = false,
        coords = vector4(843.97, -562.64, 57.99, 7),
    },
    ["mirror30"] = {
        GoneToThisHouse = false,
        coords = vector4(861.78, -583.56, 58.16, 174),
    },
    ["mirror31"] = {
        GoneToThisHouse = false,
        coords = vector4(886.73, -608.17, 58.45, 134),
    },
    ["mirror32"] = {
        GoneToThisHouse = false,
        coords = vector4(902.88, -615.54, 58.45, 43),
    },
    ["mirror33"] = {
        GoneToThisHouse = false,
        coords = vector4(928.87, -639.74, 58.24, 135),
    },
    ["mirror34"] = {
        GoneToThisHouse = false,
        coords = vector4(943.31, -653.26, 58.63, 37),
    },
    ["mirror35"] = {
        GoneToThisHouse = false,
        coords = vector4(960.03, -669.90, 58.45, 114),
    },
    ["mirror36"] = {
        GoneToThisHouse = false,
        coords = vector4(970.94, -701.44, 58.48, 174),
    },
    ["mirror37"] = {
        GoneToThisHouse = false,
        coords = vector4(979.25, -716.32, 58.22, 134),
    },
    ["mirror38"] = {
        GoneToThisHouse = false,
        coords = vector4(996.93, -729.62, 57.82, 134),
    },

}