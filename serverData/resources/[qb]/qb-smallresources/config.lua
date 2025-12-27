Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.PauseMapText = ''                                     -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear
Config.HarnessUses = 20
Config.DamageNeeded = 60.0                                  -- amount of damage till you can push your vehicle. 0-1000
Config.Logging = 'discord'                                   -- fivemanage

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 11800, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = false      -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}

Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = { 24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264 }
}

Config.Binoculars = {
    zoomSpeed = 10.0,        -- camera zoom speed
    storeBinocularsKey = 177 -- backspace by default
}

Config.AIResponse = {
    wantedLevels = false, -- if true, you will recieve wanted levels
    dispatchServices = {  -- AI dispatch services
        [1] = false,      -- Police Vehicles
        [2] = false,      -- Police Helicopters
        [3] = false,      -- Fire Department Vehicles
        [4] = false,      -- Swat Vehicles
        [5] = false,      -- Ambulance Vehicles
        [6] = false,      -- Police Motorcycles
        [7] = false,      -- Police Backup
        [8] = false,      -- Police Roadblocks
        [9] = false,      -- PoliceAutomobileWaitPulledOver
        [10] = false,     -- PoliceAutomobileWaitCruising
        [11] = false,     -- Gang Members
        [12] = false,     -- Swat Helicopters
        [13] = false,     -- Police Boats
        [14] = false,     -- Army Vehicles
        [15] = false      -- Biker Backup
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = true,                                     -- If set to true, then discord rich presence will be enabled
    applicationId = '1293726534355521577',                   -- The discord application id
    iconLarge = 'logo_name',                               -- The name of the large icon
    iconLargeHoverText = 'This is a Large icon with text', -- The hover text of the large icon
    iconSmall = 'small_logo_name',                         -- The name of the small icon
    iconSmallHoverText = 'This is a Small icon with text', -- The hover text of the small icon
    updateRate = 60000,                                    -- How often the player count should be updated
    showPlayerCount = true,                                -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 128,                                       -- Maximum amount of players
    buttons = {
        {
            text = 'Click To Join!!',
            url = 'cfx.re/join/p9839m'
        },
        {
            text = 'Click To Join The Discord!',
            url = 'https://discord.gg/SbayRP'
        }
    }
}

Config.Density = {
    parked = 5.2,
    vehicle = 50.0,
    multiplier = 3.0,
    peds = 50.0,
    scenario = 0.3
}

Config.Disable = {
    hudComponents = { 1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = { 37 },                                            -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true,                                           -- false disables ammo display
    ambience = false,                                             -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = true,                                            -- disables the idle cinematic camera
    vestDrawable = false,                                         -- disables the vest equipped when using heavy armor
    pistolWhipping = false,                                        -- disables pistol whipping
    driveby = false,                                              -- disables driveby
}

Config.RelieveWeedStress = math.random(15, 20) -- stress relief amount (100 max)

Config.Consumables = {
    eat = { -- default food items
        ['sandwich'] = math.random(15, 20),
        ['tosti'] = math.random(15, 20),
        ['twerks_candy'] = math.random(15, 20),
        ['snikkel_candy'] = math.random(15, 20),
        ['notaliecake'] = math.random(25, 50),
        ['chocoross'] = math.random(25, 50),
        ['donuttouch'] = math.random(25, 50),
        ['bearkare'] = math.random(25, 50),
        ['seasbay'] = math.random(25, 50),
        ['burger-onionrings'] = math.random(25, 50),
        ['burger-fries'] = math.random(25, 50),
        ['burger-chickensandwich'] = math.random(25, 50),
        ['burger-bleeder'] = math.random(25, 50),
        ['burger-moneyshot'] = math.random(25, 50),
        ['candycane'] = math.random(25, 50),
        ['gingercookies'] = math.random(25, 50),
        ['wwcupcakes'] = math.random(5, 10),
        ['wwcookies'] = math.random(5, 10),
        ['wwbrownies'] = math.random(5, 10),
        ['wwgummies'] = math.random(5, 10),
        ['wwchocobar'] = math.random(5, 10),
        ['cooked_meat'] = math.random(5, 10),
        ['sucker'] = math.random(5, 10),
        ['enchiladas'] = math.random(25, 50),
        ['nachos'] = math.random(25, 50),
        ['quesadilla'] = math.random(25, 50),
        ['burrito'] = math.random(25, 50),
        ['taco'] = math.random(25, 50),
        ['fried_cod'] = math.random(25, 50),
        ['fried_haddock'] = math.random(25, 50),
        ['fried_plaice'] = math.random(25, 50),
        ['fried_fishcake'] = math.random(25, 50),
        ['fishnchipsfries'] = math.random(25, 50),
        ['fishnchipscheeseburger'] = math.random(25, 50),
        ['fishnchipsgelato'] = math.random(25, 50),
        ['fried_sole'] = math.random(25, 50),
        ['fishnchipsfriedchickenstrips'] = math.random(25, 50),
        ['weddingcake'] = math.random(25, 50),
        ['birthdaycake'] = math.random(25, 50),
        ['cookies'] = math.random(25, 50),
        ['brownies'] = math.random(25, 50),
        ['celebrationcake'] = math.random(25, 50),
        ['blueberrymuffin'] = math.random(25, 50),
        ['valentinechocolate'] = math.random(15,20),
        ['nachoproblem'] = math.random(25, 50),
        ['dragonfirewings'] = math.random(25, 50),
        ['chilibangbang'] = math.random(25, 50),
        ['lsloadedfries'] = math.random(25, 50),
        ['iceboxsliders'] = math.random(25, 50),
        ['minitacos'] = math.random(25, 50),
        ['potatowedges'] = math.random(25, 50),
        ['meatloverspizza'] = math.random(25, 50),
        ['macncheese'] = math.random(25, 50),
        ['chickennoodlesoup'] = math.random(25, 50),
        ['friedpickles'] = math.random(25, 50),
        ['loadedpotatoskins'] = math.random(25, 50),
        ['sausagepizza'] = math.random(25, 50),
        ['sliders'] = math.random(25, 50),
        ['lentilsoup'] = math.random(25, 50),
        ['friedmushrooms'] = math.random(25, 50),
        ['tatortots'] = math.random(25, 50),
        ['cheesepizza'] = math.random(25, 50),
        ['minestronesoup'] = math.random(25, 50),
        ['smapler'] = math.random(25, 50),
        ['doritos'] = math.random(25, 50),
        ['pepperonipizza'] = math.random(25, 50),
        ['bonelesswings'] = math.random(25, 50),
        ['friedchocobar'] = math.random(25, 50),
        ['tomatosoup'] = math.random(25, 50),
        ['chicwrap'] = math.random(25, 50),
        ['chicstrips'] = math.random(25, 50),
        ['crystalchicnuggets'] = math.random(25, 50),
        ['chicpatty'] = math.random(25, 50),
        ['chicwings'] = math.random(25, 50),
        ['strawberryfruittart'] = math.random(25, 50),
        ['blueberrypastry'] = math.random(25, 50),
        ['baklava'] = math.random(25, 50),
        ['greencookies'] = math.random(25, 50),
        ['caramelbrownies'] = math.random(25, 50),
        ['catcookies'] = math.random(25, 50),
        ['hamncheesesandwich'] = math.random(25, 50),
        ['frenchonionsoup'] = math.random(25, 50),
        ['ceasarsalad'] = math.random(25, 50),
        ['talapia'] = math.random(25, 50),
        ['jokebonesteak'] = math.random(25, 50),
        ['roastbeast'] = math.random(25, 50),
        ['splitpersonalityplatter'] = math.random(25, 50),
        ['cornyashelldogs'] = math.random(25, 50),
        ['cluckinhilarious'] = math.random(25, 50),
        ['donorkebab'] = math.random(25, 50),
        ['chickenkebab'] = math.random(25, 50),
        ['chickenburgah'] = math.random(25, 50),
        ['chips'] = math.random(25, 50),
        ['salad'] = math.random(25, 50)
    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(25, 40),
        ['kurkakola'] = math.random(15, 20),
        ['coffee'] = math.random(15, 20),
        ['flickbean'] = math.random(35, 50),
        ['rossybop'] = math.random(35, 50),
        ['lawbender'] = math.random(35, 50),
        ['espyourself'] = math.random(35, 50),
        ['loveulatte'] = math.random(35, 50),
        ['burger_softdrink'] = math.random(25, 50),
        ['burger-mshake'] = math.random(25, 50),
        ['burger-coke'] = math.random(25, 50),
        ['burger-sprite'] = math.random(25, 50),
        ['eggnog'] = math.random(40, 80),
        ['horchata'] = math.random(35, 50),
        ['cafedeolla'] = math.random(35, 50),
        ['pinklemonaid'] = math.random(35, 50),
        ['aguafresca'] = math.random(35, 50),
        ['fishnchipsorangesoda'] = math.random(35, 50),
        ['passionfruitrefresher'] = math.random(35, 50),
        ['hottea'] = math.random(35, 50),
        ['coldtea'] = math.random(35, 50),
        ['bakerycoffee'] = math.random(35, 50),
        ['lssunset'] = math.random(35, 50),
        ['lildragonbreath'] = math.random(35, 50),
        ['moonshine'] = math.random(15, 20),
        ['earlgreytea'] = math.random(35, 50),
        ['applejuice'] = math.random(35, 50),
        ['applesmoothie'] = math.random(35, 50),
        ['blueberrybubbletea'] = math.random(35, 50),
        ['orangepowerade'] = math.random(35, 50),
        ['mixedberrypowerade'] = math.random(35, 50),
        ['fruitpunch'] = math.random(35, 50),
        ['strawberrysmoothie'] = math.random(35, 50),
        ['orangejuice'] = math.random(35, 50),
        ['blacktea'] = math.random(35, 50),
        ['grapezeropowerade'] = math.random(35, 50),
        ['sunkist'] = math.random(35, 50),
        ['proteinsmoothie'] = math.random(35, 50),
        ['cranberryjuice'] = math.random(35, 50),
        ['sevendown'] = math.random(35, 50),
        ['icedtea'] = math.random(35, 50),
        ['rite'] = math.random(35, 50),
        ['repsi'] = math.random(35, 50),
        ['fantafruittwist'] = math.random(35, 50),
        ['lucozade'] = math.random(35, 50),
        ['shaunberryshake'] = math.random(35, 50),
        ['jayspiss'] = math.random(35, 50),
    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),
        ["bluelagoon"] = math.random(40, 80),
        ["pinacolada"] = math.random(40, 80),
        ["sanfrancisco"] = math.random(40, 80),
        ["caipirinha"] = math.random(40, 80),
        ["mojito"] = math.random(40, 80),
        ["maitai"] = math.random(40, 80),
        ['margarita'] = math.random(40, 80),
        ['lsdlickshot'] = math.random(35, 50),
        ['queenvenom'] = math.random(35, 50),
        ['mochimeltdown'] = math.random(35, 50),
        ['micdrop'] = math.random(35, 50),
        ['thehecklebomb'] = math.random(35, 50),
        ['comicrelief'] = math.random(35, 50),
        ['punchlinepunch'] = math.random(35, 50),
        ['gigglejuice'] = math.random(35, 50),
        ['moscowmule'] = math.random(35, 50),
        ['spritz'] = math.random(35, 50),
        ['ginntonic'] = math.random(35, 50),
        ['daiquiri'] = math.random(35, 50),
        ['oldfashioned'] = math.random(35, 50),
        ['bloodymary'] = math.random(35, 50),
        ['manhattan'] = math.random(35, 50),
        ['negroni'] = math.random(35, 50),
        ['espressomartini'] = math.random(35, 50),
        ['french75'] = math.random(35, 50),
        ['whiskeysour'] = math.random(35, 50),
        ['sidecar'] = math.random(35, 50),
        ['limemargarita'] = math.random(35, 50),
        ['paloma'] = math.random(35, 50),
        ['martini'] = math.random(35, 50),
        ['cosmopolitan'] = math.random(35, 50),
        ['strawberrymargarita'] = math.random(35, 50),
    },
    custom = { -- put any custom items here
        -- ['newitem'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {'''
        --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(20, 40),
        --         isAlcohol = false, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }
        -- ['flickbean'] = {
        --     progress = {
        --         label = 'Using Item...',
        --         time = 5000
        --     },
        --     animation = {
        --         animDict = 'amb@prop_human_bbq@male@base',
        --         anim = 'base',
        --         flags = 8,
        --     },
        --     prop = {
        --         model = false,
        --         bone = false,
        --         coords = false, -- vector 3 format
        --         rotation = false, -- vector 3 format
        --     },
        --     replenish = {'''
        --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
        --         replenish = math.random(20, 40),
        --         isAlcohol = false, -- if you want it to add alcohol count
        --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
        --         server = false -- if the event above is a server event
        --     }
        -- }
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = {  -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = false,
    [`luxor`] = false,
    [`luxor2`] = false,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = false,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = false,
    [`mule`] = false,
    [`maverick`] = false,
    [`blimp`] = false,
    [`airtug`] = false,
    [`camper`] = false,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = false,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] =  true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = false,
    [`scarab2`] = false,
    [`scarab3`] = false,
    [`rrocket`] = false,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.Objects = { -- for object removal
    { coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b' },
    { coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a' },
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = {                   -- Elevator @ labs
        [1] = {               -- up
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [2] = {                   -- Elevator @ kareshouse
        [1] = {               -- up
            poly = { coords = vector3(-1266.05, 4441.85, 29.42), heading = 151.72, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
    [2] = { -- down
            poly = { coords = vector3(-1265.77, 4441.82, 34.6), heading = 64.23, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [3] = {                   -- Elevator @ uniondepository
        [1] = {               -- up
            poly = { coords = vector3(-7.03, -653.86, 33.45), heading = 14.24, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
    [2] = { -- down
            poly = { coords = vector3(5.78, -709.13, 16.13), heading = 153.43, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    },
    [4] = {                   -- Elevator @ NHS
        [1] = {               -- up
            poly = { coords = vector3(-436.29, -360.06, 34.95), heading = 14.24, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = "Helipad"     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
    [2] = { -- down
            poly = { coords = vector3(-444.34, -332.68, 78.17), heading = 153.43, length = 2, width = 2 },
            allowVeh = false,
            label = "Main"
        }
    },
    [5] = {                   -- Elevator @ Law Lighthouse
        [1] = {               -- up
            poly = { coords = vector3(3426.87, 5174.47, 7.41), heading = 14.24, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = "Top of Lighthouse"     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
    [2] = { -- down
            poly = { coords = vector3(3430.63, 5172.00, 35.81), heading = 153.43, length = 2, width = 2 },
            allowVeh = false,
            label = "Bottom of Lighthouse"
        }
    },
}
    


Config.CarWash = {
    dirtLevel = 0.1,                                                                                   -- threshold for the dirt level to be counted as dirty
    defaultPrice = 20,                                                                                 -- default price for the carwash
    locations = {
        [1] = { coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359 }, -- South Los Santos Carson Avenue
        [2] = { coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0 },     -- South Los Santos Innocence Boulevard
        [3] = { coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315 },    -- Paleto Bay Boulevard
        [4] = { coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21 },     -- Sandy Shores
        [5] = { coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0 },   -- Little Seoul Gas Station
        [6] = { coords = vector3(853.92, -956.42, 26.33), length = 11.8, width = 5.2, heading = 0 },   -- overspeed mech shop
    }
}
