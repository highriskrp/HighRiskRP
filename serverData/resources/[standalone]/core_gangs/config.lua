Config = {
    ------------------------
    -- FRAMEWORK SETTINGS --
    ------------------------

    -- Framework use
    -- you can choose between :
    -- 'qb-core'
    -- 'esx'
    Framework = 'qb-core',

    -- Framework resource name is the name of the resource folder
    -- by default it's :
    -- 'qb-core' for qb-core framework
    -- 'es_extended' for esx framework
    FrameworkResource = 'qb-core',

    ---------------------
    -- TARGET SETTINGS --
    ---------------------

    -- If you use qb-target or ox_target as target script
    UseQbTarget = GetResourceState('qb-target') == 'started',
    UseOxTarget = GetResourceState('ox_target') == 'started',

    ------------------------
    ------- ESX ONLY -------
    ------------------------
    -- Framework version (ESX ONLY)
    -- if you use lower than 1.8
    -- OR use ESX with getSharedObject event, set it to false
    NewFrameworkVersion = true,

    -- Framework event (ESX ONLY)
    -- to retrieve esx framework (on old version)
    SharedObject = 'esx:getSharedObject',

    -------------------------
    ------ QBCORE ONLY ------
    -------------------------
    AutoCreateQBGang = { -- Define which QB gangs will be auto created in the system with assigned color by default. When player gets this gang, they will be added to the organization
        -- ['vagos'] = '#DE2A21',
        -- ['ballas'] = '#9D27B0',
        -- ['families'] = '#4CAF50',
    },

    -------------------------
    ---- JOBS AS GANGS  -----
    -------------------------
    AutoCreateJobGangs = { -- Define which jobs will be auto created as organizations (works for both ESX and QB). When player gets this job, they will be added to the organization
        -- ['ambulance'] = '#E53935',
    },

    --------------------------------
    ---- LAW ENFORCEMENT GANG  -----
    --------------------------------
    LawEnforcementGang = true, -- Set to true to enable a unified law enforcement organization
    LawEnforcementGangName = 'lawenforcement', -- Name of the law enforcement organization
    LawEnforcementGangColor = '#1E88E5', -- Color for the law enforcement organization
    LawEnforcementJobs = { -- Jobs that are considered law enforcement (will be added to the law enforcement gang)
        'police',
        'sheriff',
        'state',
        -- Add more law enforcement jobs here
    },

    ------------------------
    -- INVENTORY SETTINGS --
    ------------------------
    -- You can choose between :
    -- 'qb-inventory' (If you use lj-inventory / ps-inventory or any fork of qb-inventory set 'qb-inventory' here and the name of the resource folder of your inventory in QBInventoryResourceName)
    -- 'core_inventory' : https://www.c8re.store/
    -- 'ox_inventory' : https://github.com/overextended/ox_inventory
    -- 'qs-inventory' (version higher or equal to 2.6.0) : https://buy.quasar-store.com/
    -- 'codem-inventory' (version higher or equal to 1.6) : https://codem.tebex.io/
    -- 'tgiann-inventory' : https://tgiann.tebex.io/
    -- 'custom' : go to functions_override.lua to implement your own function to be comaptible with your inventory
    UseInventory = 'qb-inventory',

    ------------------------
    -- QB-INVENTORY ONLY ---
    ------------------------
    -- Here you can set the resource folder name (if you use lj-inventory / ps-inventory or any other qb-inventory fork inventory)
    QBInventoryResourceName = 'qb-inventory',

    ------------------------
    ---- BASIC SETTINGS ----
    ------------------------
    -- UI
    OpenKey = 'F9', -- Key for opening the menu

    TransfertOwnershipWhenOwnerLeave = true, -- Transfert the ownership of the organization to the most "stats" player from the org (all the stats added up)
    RemoveOrganizationWhenEveryMembersLeaveIt = true, -- Will remove the organization from database and set neutral all the zone when all the members of an organization lease it

    -----------------------------------
    ----- ZONE PROTECTION LEVELS ------
    -----------------------------------
    DefaultProtectionValue = 3, -- Default protection value for default zones (zones that are not in database)
    ProtectionValuePrice = 100, -- This price will be multiplied by protection value to get the price for protection level
    MaxProtectionLevel = 5, -- Maximum protection level that can be set on zone

    ------------------------
    ---- NPCS SETTINGS -----
    ------------------------
    DefaultNPCValue = 0, -- Default number of npcs that will spawn to protect the zone (Performance Heavy if set to high)
    NPCValuePrice = 1000, -- Default price for one more npc that will spawn to protect the zone
    MaxNPCValue = 0, -- Maximum number of npcs that can be spawned to protect the zone
    NPCSpawnWithWeaponInHand = false, -- Weapon of the npc is display in his hand when he wnader in area
    NPCAttackOnlyWhenWarOnNPCZone = false, -- Npc only attack if a war is start in the zone, else, won't attack anymore (even if you are another organization / player without organization)
    NPCAttackOtherDefaultGroup = false, -- Allow NPC to attack other NPC group like VAGOS / LOST / F4L / COP
    NPCRevertAfterCapture = true, -- Will revert npc value to default after zone is captured, existing npc will stop attacking and will be release / surrender
    NPCStopAttackingOnWarEnd = true, -- NPC will stop attacking on war end (even if enemy take or don't take the zone)
    NPCModels = {"g_m_m_chicold_01", "csb_brucie2", "g_m_y_korean_02", "csb_vincent"}, -- Setup the npc model name (Can be retrieve here : https://docs.fivem.net/docs/game-references/ped-models/)
    NPCWeapons = {"weapon_pistol", "weapon_microsmg", "weapon_pumpshotgun"}, -- Weapon that can be add to Npc spawn to defend the zone.

    -------------------------
    ---- BOUNTY SETTINGS ----
    -------------------------
    IsBountyCK = false,             -- !!WARNING!! Do completed bounties count as Character Kill (automatically deletes character, check functions_override.lua to implement inventory and others information removal)
    IsBountyStatWipe = true,        -- !!WARNING!! Completed bounties will wipe criminals role stats (will revert to base role ex. Pickpocket)
    IsBountyInventoryWipe = false,  -- !!WARNING!! Completed bounties will wipe the criminals inventory that just been killed. Go to functions_override.lua to implement ClearPlayerInventory function (Not core_inventory users).
    MinimalBounty = 10000,            -- Minimal bounty that can be set on player

    ---------------------------
    ---- ZONE WAR SETTINGS ----
    ---------------------------
    DisplayWarWall = false, -- When a war is start, wall are display in game so you can see which zone is currently in war
    DisplayWallWarForEveryone = false, -- true : only player with criminals profil will see it, false : every player, even player without criminals profile will see the wall
    DistanceToDisplayWall = 100.0, -- Distance where wall will be draw when war is start. /!\ More than 500.0 will cause FPS issue /!\
    EnableBackgroundWallEffect = false, -- Disable this will increase your performance if you have FPS issue (remove the mooving background on the wall)
    EnableSlidingTextWallEffect = false, -- Disable this will increase your performance if you have FPS issue (Remvoe the text slide effect on the wall)
    EnablePulseTextWallEffect = false, -- Disable this will increase your performance if you have FPS issue  (Remove the text pulse effect on the wall)

    TimeWhenWarCanStart = { -- Add any time range where you want to allow start war (24H time range from server). To be able to run time range from 21 to 02 you need to do two time rules like in this example below. H for hour m for minute
        -- { beginWar = {h = 21, m = 0}, endWar= {h = 24, m = 0} },
        -- { beginWar = {h = 0, m = 0}, endWar= {h = 2, m = 0} },
    },

    -- true : Only owner of the orgaznaition can start a war
    -- false : everyone can start a war in the organization
    OnlyOwnerOfOrganizationCanStartWar = false,

    -- Minimum of player with a criminal profil connected
    -- on the server to allow war to start
    CriminalOnlineRequiredToStartWar = 2,

    -- Maximum wars one organization can start at the same time
    -- if set to 0 : infinite wars
    MaximumOrganizationWars = 1,

    -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
    -- (if organization members (offline and online) are less than this number, it won't be check),
    -- Set to false if you want to be able to start war without player organisation check
    OrganizationMembersRequiredOnlineToAttackZone = 0,

    -- Duration war time in minutes after which zone will be captured
    BaseZoneWarTime = 10,

    -- Currency item required in inventory to start a war
    PriceToStartWar = 250,

    OwnedZoneAdvantage = 500, -- Amount of points zone's owner organization gets when a war is start in his zone
    WarScoreIncrease = 5, -- Amount of points added every second from each player to your organizations score in battle

    OrganizationCooldown = 15, -- Time in minutes after which player can start another zone war
    ZoneCooldown = 60, -- Time in minutes after which all players can start another war in the same zone

    CurrencyAward = 500, -- Amount of special currency awarded to each criminal when the organization win the war
    Rewards = {          -- Reward send to player when they win the war. Can be fixed amount or random amount ({0,5} will be a random from 0 no obejct to 5 object)
        -- ['bandage'] = 2,
        -- ['bandage'] = {0, 3} -- Random reward from 0 to max 3
    },

    TriggerDispatchAlert = false, -- Set to true if you want to trigger a dispatch alert when a war is start. You will need to add the code of your dispatch in integration_main.lua file
    CheckPoliceAmount = false, -- Set to true if you want to check the police amount. You will need to add the code of your dispatch in integration_main.lua file

    ---------------------------
    -- ORGANIZATION SETTINGS --
    ---------------------------
    CanCreateOrganizations = true, -- Allow player to create organizaiton from UI (if false, you will need to use the command to create it)
    OrganizationCreationPrice = 10000, -- Price for creating organization
    BlacklistedJob = { -- job that are not allow to open the UI of the script (keybind / command won't open the UI)
        ['police'] = true,
        --['sheriff'] = true,
        -- ['gouvernment'] = true,
    },

    -- Define the max amount of members in an organization
    -- false : no limitation
    MaximumOrganizationMembers = 6,

    -- SPECIAL CURRENCY (Inventory Item)
    -- Dont forget to add this item to your inventory items.lua in qb-core
    CurrencyName = 'bands', -- Name of special currency

    -- MULTIPLIER ZONE DRAW SHAPE
    -- The shape will be drawn around the important zones
    CubeShape = false, -- Cube shape
    CircleShape = false, -- Circle shape
    DiamondShape = true, -- Diamond shape

    -------------------------
    -- ZONES CONFIGURATION --
    -------------------------
    -- Zone that won't be generated on the map (main or child zone)
    -- For example, if you want to avoid zone on main road / hospital or thing like that
    -- just put the zone number and it won't be generated on the map
    BlackListedZones = {
        [5083] = false,
        [6352] = false,
        [6112] = false,
        [6591] = false,
        [6605] = false,
        [6683] = false,
        [6684] = false,
        [6685] = false,
        [6762] = false,
        [6763] = false,
        [6737] = false,
        [6743] = false,
        [6747] = false,
        [6826] = false,
        [6839] = false,
        [7385] = false,
    },

    -- true : zone not owned generate item
    -- false : zone not own doesn't generate otem
    EnableGenerationWhenZoneIsNotOwned = false,

    -- true : zone not owned process item
    -- false : zone not own doesn't process item
    EnableProcessingWhenZoneIsNotOwned = false,

    -- true : zone not owned sell item
    -- false : zone not own doesn't sell item
    EnableSellingWhenZoneIsNotOwned = false,

    -- !!!IMPORTANT!!!! FIND ZONE BY TYPING /CURRENTZONE
    -- You can create any zone you want.
    -- Go in game, find the place where you want to set the zone
    -- Type /currentzone and open you F8 console, the number display is the zone number
    -- Then add the title, image, storage and all other parameters like in hte example provide with the script bellow
    -- Value zones are special areas that can be captured by organizations
    -- These zones provide value for organization in various ways
    -- ValueTypes: processing, sales, storage, generation
    Zones = {
        -- Key of the table is return by the command /currentzone in game
        -- /!\ Make sure every time you change the coords you check the zone with /currentzone command and update the table key if needed to change the location on the map too /!\
        -- If you only change the coords without the zone number you can probably have a zone and coords that doesn't match on the map
        [6123] = {
            Title = 'WEED HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces weed',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage01'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(497.82, -519.73, 24.76), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(497.82, -519.73, 24.76 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'purple_haze_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'cannabis_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'orange_haze_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'blue_haze_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'white_haze_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'aurora_haze_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                 -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'amber_kush_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'rose_kush_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'blood_kush_gram',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { 'mp_f_weed_01', 'mp_m_weed_01', 'g_m_y_mexgoon_01', ',g_m_y_famfor_01', 'g_f_importexport_01', 'a_f_y_hippie_01'},
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { 'weapon_pistol', 'weapon_microsmg' }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [6904] = {
            Title = 'MATERIALS HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces materials',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage02'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(-477.85, -1666.74, 18.77), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(-484.94, -1671.33, 19.31 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'steel',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'rubber',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'aluminum',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'plastic',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'metalscrap',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
            },
            -- Processing parameters
            ProcessingItems = {
                {
                    itemName = 'glass',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'copper',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [3287] = {
            Title = 'MOONSHINE HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces moonshine',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage03'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(1395.53, 3608.43, 38.94), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(-1147.5875, -1452.1172, 4.5992 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'moonshine',        -- item name that will be placed in the storage x time set
                    itemAmount = 20                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [5240] = {
            Title = 'HEROIN HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces heroin',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage04'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(-1072.82, 739.94, 165.47), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(-1072.82, 739.94, 165.47 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'poppyresin',        -- item name that will be placed in the storage x time set
                    itemAmount = 10                  -- amount of item placed in the storage x time set
                },
            },

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [6765] = {
            Title = 'SHROOM HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces shrooms',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage05'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(1693.20, -1445.35, 112.63), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(1693.20, -1445.35, 112.63- 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'shrooms',        -- item name that will be placed in the storage x time set
                    itemAmount = 20                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { 'csb_ballasog', 'g_f_y_ballas_01', 'g_m_y_ballasout_01', ',ig_ballasog', 'g_m_y_ballaeast_01', 'g_m_y_ballaorig_01', 'g_m_y_ballasout_01' },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [6192] = {
            Title = 'FORGERY STATION',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces forged checks',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage06'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(-591.38, -682.28, 36.29), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(-591.38, -682.28, 36.29 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'forgedcheck',        -- item name that will be placed in the storage x time set
                    itemAmount = 3                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'stolendebitcard',        -- item name that will be placed in the storage x time set
                    itemAmount = 8                  -- amount of item placed in the storage x time set
                },
                {
                    itemName = 'stolencreditcard',        -- item name that will be placed in the storage x time set
                    itemAmount = 5                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [1951] = {
            Title = 'METH HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces meth',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage07'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(2234.12, 5611.1, 54.6), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },
            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(2233.12, 5603.56, 54.67 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'drug_meth',        -- item name that will be placed in the storage x time set
                    itemAmount = 1                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [6344] = {
            Title = 'BANDS HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces bands',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage08'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(-1315.57, -820.19, 17.02), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(-1318.86, -821.1, 17.02 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
                {
                    itemName = 'bands',        -- item name that will be placed in the storage x time set
                    itemAmount = 1000                  -- amount of item placed in the storage x time set
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [5647] = {
            Title = 'PILLS HARVEST',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {'Produces pills',
                           'Contains a storage box for produced items. Retrieve the product in the storage directly'},
            Type = 'generation', -- can be processing, sales, storage, generation
            Storages = {                                -- storage unit to handle items, can be multiple, and each storage will receive the items
                ['generation-storage09'] = {            -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',            -- inventory type for core inventory
                    Coords = vector3(321.18, 199.49, 104.72), -- -0,98 to remove character height
                    Prop = 'prop_weed_tub_01',          -- props model that will handle target to open storage
                    Rotation = 33.3160,
                    slot = 50,                          -- weight inventory integration
                    maxWeight = 2500000,                -- weight inventory integration
                    OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_m_weed_01'] = {
                    Coords = vector3(306.15, 195.9, 104.17 - 0.98),
                    Rotation = 30.7270,
                    animDict = 'amb@lo_res_idles@',
                    animName = 'world_human_lean_male_foot_up_lo_res_base'
                },
            },

            -- Generation parameters
            GenerationItems = { -- List of item Generate in the storage (can one or inifinite)
            {
                itemName = 'morphine',        -- item name that will be placed in the storage x time set
                itemAmount = 10                  -- amount of item placed in the storage x time set
            },
            {
                itemName = 'xanax',        -- item name that will be placed in the storage x time set
                itemAmount = 10                  -- amount of item placed in the storage x time set
            },
            {
                itemName = 'vic5',        -- item name that will be placed in the storage x time set
                itemAmount = 10                  -- amount of item placed in the storage x time set
            },
            {
                itemName = 'oxy',        -- item name that will be placed in the storage x time set
                itemAmount = 10                  -- amount of item placed in the storage x time set
            },
            },
            Time = 3600000, -- Time in miliseconds after which item will be generated

            -- Set specific NPC model that will spawn for this zone when protection will be increase
            NPCModels = { },
            -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
            NPCWeapons = { }
            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check)
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        -- key return by the command /currentzone
        -- /!\ Make sure every time you change the coords you check the zone with /currentzone command and update the table key if needed to change the location on the map too /!\
        [2348] = {
            Title = 'COCAINE PROCESSING',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {
                'Process poppyplant to cocaine',
                'Put coca leaf or coke baggy into the storage to get coke baggy or coke brick'
            },

            Type = 'processing',                       -- processing, sales, storage, generation

            Storages = {                               -- storage unit to handle items, can be multiple
                ['processing-storage01'] = {           -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',
                    Coords = vector3(2441.97, 4972.44, 51.56 - 0.98),
                    Prop = 'prop_weed_tub_01',         -- props model that will handle target to open storage
                    Rotation = 248.1330,
                    slot = 50,                         -- slot inventory integration
                    maxWeight = 2500000,                -- weight inventory integration,
                    OnlyOwnerCanAccessStorage = false, -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_f_meth_01'] = {
                    Coords = vector3(2448.43, 4976.08, 51.56 - 0.98),
                    Rotation = 248.9632,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
                ['mp_m_meth_01'] = {
                    Coords = vector3(2447.1, 4983.55, 51.56 - 0.98),
                    Rotation = 239.3278,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
            },
            -- Processing parameters
            ProcessingItems = {
                {
                    ProcessingFromItem = 'coca_leaf', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'cokebaggy',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'cokebaggy',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'coke_brick',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be processed

            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [7155] = {
            Title = 'MATERIAL PROCESSING',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {
                'Process one metal into another',
                'Put metal scrap or aluminum into the storage to get aluminum or steel'
            },

            Type = 'processing',                       -- processing, sales, storage, generation

            Storages = {                               -- storage unit to handle items, can be multiple
                ['processing-storage02'] = {           -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',
                    Coords = vector3(1080.99, -1980.23, 31.47 - 0.98),
                    Prop = 'prop_weed_tub_01',         -- props model that will handle target to open storage
                    Rotation = 248.1330,
                    slot = 50,                         -- slot inventory integration
                    maxWeight = 2500000,                -- weight inventory integration,
                    OnlyOwnerCanAccessStorage = false, -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_f_meth_01'] = {
                    Coords = vector3(1078.15, -1978.9, 31.47 - 0.98),
                    Rotation = 248.9632,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
                ['mp_m_meth_01'] = {
                    Coords = vector3(2447.1, 4983.55, 51.56 - 0.98),
                    Rotation = 239.3278,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
            },
            -- Processing parameters
            ProcessingItems = {
                {
                    ProcessingFromItem = 'metalscrap', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'aluminum',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'aluminum',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'steel',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be processed

            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [7462] = {
            Title = 'WEED PROCESSING',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {
                'Process seeds to grams',
                'Put seeds in and process to tops, tops to grams'
            },

            Type = 'processing',                       -- processing, sales, storage, generation

            Storages = {                               -- storage unit to handle items, can be multiple
                ['processing-storage03'] = {           -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',
                    Coords = vector3(29.81, -2508.61, 6.01 - 0.98),
                    Prop = 'prop_weed_tub_01',         -- props model that will handle target to open storage
                    Rotation = 248.1330,
                    slot = 50,                         -- slot inventory integration
                    maxWeight = 2500000,                -- weight inventory integration,
                    OnlyOwnerCanAccessStorage = false, -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_f_meth_01'] = {
                    Coords = vector3(29.81, -2508.61, 6.01 - 0.98),
                    Rotation = 248.9632,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
            },
            -- Processing parameters
            ProcessingItems = {
                {
                    ProcessingFromItem = 'purple_haze_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'purple_haze_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'purple_haze_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'purple_haze_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'cannabis_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'cannabis_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'cannabis_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'cannabis_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'orange_haze_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'orange_haze_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'orange_haze_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'orange_haze_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'blue_haze_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'blue_haze_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'blue_haze_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'blue_haze_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'white_haze_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'white_haze_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'white_haze_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'white_haze_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'aurora_haze_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'aurora_haze_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'aurora_haze_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'aurora_haze_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'amber_kush_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'amber_kush_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'amber_kush_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'amber_kush_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'rose_kush_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'rose_kush_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'rose_kush_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'rose_kush_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'blood_kush_seed', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'blood_kush_top',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'blood_kush_top',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'blood_kush_gram',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be processed

            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },
        [7624] = {
            Title = 'HEROIN PROCESSING',
            Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
            Description = {
                'Process poppies to vials',
                'Put poppies in and process to needles, needles to vials'
            },

            Type = 'processing',                       -- processing, sales, storage, generation

            Storages = {                               -- storage unit to handle items, can be multiple
                ['processing-storage04'] = {           -- name of the storage, need to be unique accros ALL THE ZONE and HOUSE ZONE, don't forget to change it on your new zone
                    InventoryType = 'stash',
                    Coords = vector3(510.50, -2731.54, 6.06- 0.98),
                    Prop = 'prop_weed_tub_01',         -- props model that will handle target to open storage
                    Rotation = 248.1330,
                    slot = 50,                         -- slot inventory integration
                    maxWeight = 2500000,                -- weight inventory integration,
                    OnlyOwnerCanAccessStorage = false, -- true : only owner can access the storage, false : all members can
                },
            },

            NPCs = {
                ['mp_f_meth_01'] = {
                    Coords = vector3(510.50, -2731.54, 6.06 - 0.98),
                    Rotation = 248.9632,
                    animDict = 'amb@world_human_leaning@female@coffee@idle_a',
                    animName = 'idle_a'
                },
            },
            -- Processing parameters
            ProcessingItems = {
                {
                    ProcessingFromItem = 'poppyresin', -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,    -- amount item required that will be transform
                    ProcessingToItem = 'heroin',   -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1        -- amount of item that will be add in the storage when transform
                },
                {
                    ProcessingFromItem = 'heroin',       -- item required in the storage that will be transform
                    ProcessingFromItemAmount = 10,          -- amount item required that will be transform
                    ProcessingToItem = 'heroinvial',  -- item that will be add in exchange of the item required
                    ProcessingToItemAmount = 1              -- amount of item that will be add in the storage when transform
                },
            },
            Time = 3600000, -- Time in miliseconds after which item will be processed

            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        },

        -- key return by the command /currentzone
        -- /!\ Make sure every time you change the coords you check the zone with /currentzone command and update the table key if needed to change the location on the map too /!\
        --[5164] = {
        --    Title = 'COCAINE SALES',
        --    Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
        --    Description = {
        --        'Sell cocaine every minute',
        --        'Put bag or brick of cocaine into the storage to get currency in exchange every minute'
        --    },

        --    Type = 'sales',                             -- processing, sales, storage, generation

        --    Storages = {
        --        ['sales-storage01'] = {
        --            InventoryType = 'stash',
        --            Coords = vector3(-798.5649, 884.4944, 203.5953- (2 * 0.98)),
        --            Rotation = 287.7923,
        --            Npc = 's_m_y_dealer_01',            -- NPC model that will handle target to open storage
        --            animDict = 'amb@code_human_in_bus_passenger_idles@male@sit@base',
        --            animName = 'base',
        --            slot = 50,                          -- slot inventory integration
        --            maxWeight = 2500000,                -- weight inventory integration
        --            OnlyOwnerCanAccessStorage = false,  -- true : only owner can access the storage, false : all members can
        --        },
        --    },

        --    NPCs = {
        --    },

        --    SalesItems = {
        --        {
        --            SaleItem = 'cokebaggy',     -- Item required in the storage that will be sell
        --            SaleAmount = 10,            -- Amount required in the storage that will be sell
        --            SalePriceForAmount = 100    -- Amount of currency put in exchange in the storage when the amount of items will be sell
        --        },
        --        {
        --            SaleItem = 'coke_small_brick',  -- Item required in the storage that will be sell
        --            SaleAmount = 1,                 -- Amount required in the storage that will be sell
        --            SalePriceForAmount = 100        -- Amount of currency put in exchange in the storage when the amount of items will be sell
        --        },
        --    },

        --    Time = 60000, -- Time in miliseconds after which item will be sold

            -- Amount of players in the organisation that need to be online to attack an owned zone by another organization
            -- (if organization members (offline and online) are less than this number, it won't be check),
            -- OrganizationMembersRequiredOnlineToAttackZone = 5,
        --},
    },

    HouseZoneCapture = false, -- false : unable to get house zone (center), need ot be set via setzone command, true : enable start war on house zone
    HouseZones = {
        -- key return by the command /currentzone
        --[5790] = {
        --    Title = 'LAWLESS BLOCK',
        --    Picture = 'https://i.imgur.com/5ZQJ6Xs.png',
        --    Description = {
        --        'Gang house with storage',
        --        'Provide a secure storage for your gang'
        --    },
        --    Type = 'house',
        --    Storages = {
        --        ['house-storage01'] = {
        --            InventoryType = 'stash',
        --            Coords = vector3(-1470.93, -32.79, 57.89 - 0.98),
        --            Prop = 'prop_weed_tub_01',
        --            Rotation = 49.1725,
        --            slot = 50,              -- slot inventory integration
        --            maxWeight = 2500000     -- weight inventory integration
        --        }
        --    },
        --    -- Set specific NPC model that will spawn for this zone when protection will be increase
        --    NPCModels = { },
        --    -- Set specific NPC weapon that will give to npc to the npc for this zone when protection will be increase
        --    NPCWeapons = { }
        --},
    },

    --------------------------
    -- CONTINENTAL SETTINGS --
    --------------------------

    -- Continentals are special zones that are not capturable but they serve as a safezone for all criminals
    -- Killing on continental grounds (killer OR victim in the continental zone) will grant you status of excomunicado and you will get a bounty (Can be disable with KillInContinentalZoneSetBounty set to false)
    -- Also they are used for shopping with special currency
    KillInContinentalZoneSetBounty = true, -- Set a bounty on the player direclty if he killed someone in the Continental zone
    BountyPriceSetOnContinentalKill = 200, -- The bounty amount set to the player if the player killed in continental zone or tha amount add to an existing bounty set to this player
    Continentals = {
        -- ZONES
        -- !!!IMPORTANT!!!! FIND ZONE BY TYPING /CURRENTZONE
        -- You can create any zone you want.
        -- Go in game, find the place where you want to set the zone
        -- Type /currentzone and open you F8 console, the number display is the zone number        -- /!\ Make sure every time you change the coords you check the zone with /currentzone command and update the table key if needed to change the location on the map too /!\
        [8025] = {
            Title = 'CONTINENTAL AREA',
            Picture = 'https://static.wikia.nocookie.net/john-wick8561/images/f/f1/Nyc.png/revision/latest?cb=20230513173806',
            Type = 'continental',

            ShopNPCs = {
                ['s_m_y_devinsec_01'] = {
                    Coords = vector3(1196.9603, -3253.4490, 7.0952 - 0.98),
                    Rotation = 88.4567,
                    animDict = nil,
                    animName = nil
                }
            },

            Shop = {
                ['items'] = {
                    ['lockpick'] = 500,
                    ['bandage'] = 500,
                    ['medikit'] = 2000,
                },
                ['weapons'] = {
                }
            },
            ShopOpenHours = false -- if you set false = unlimited, or format is { openHours, closeHours }, 24 hours format (00 to 23)
        }
    },

    -- Criminal titles asigned for achieved criminals
    -- Higher number titles are more exclusive
    CriminalTitles = {

        [1] = {
            Title = 'Pickpocket',
            Color = '#6e6e6e',
            Background = '#454545',

            -- REQUIRED
            Require = {
                ['kills'] = 0,
                ['headshots'] = 0,
                ['captured'] = 0,
                ['bounties'] = 0
            }
        },
        [2] = {
            Title = 'Bandit',
            Color = '#87b5ff',
            Background = '#214173',

            -- REQUIRED
            Require = {
                ['kills'] = 25,
                ['headshots'] = 5,
                ['captured'] = 25,
                ['bounties'] = 0
            }
        },
        [3] = {
            Title = 'The Don',
            Color = '#bf49eb',
            Background = '#711c91',

            -- REQUIRED
            Require = {
                ['kills'] = 50,
                ['headshots'] = 10,
                ['captured'] = 50,
                ['bounties'] = 5
            }
        },
        [4] = {
            Title = 'Baba Yaga',
            Color = '#db212a',
            Background = '#591215',

            -- REQUIRED
            Require = {
                ['kills'] = 100,
                ['headshots'] = 20,
                ['captured'] = 100,
                ['bounties'] = 10
            }
        }

    },

    Text = {
        ['name_already_used'] = 'This name is already used',
        ['required_organization_name'] = 'Organization name is required',
        ['required_organization_color'] = 'Organization color is required',
        ['required_organization_picture'] = 'Organization url picture is required',
        ['invalid_hex_color'] = 'This color code is not an hexadecimal color code',
        ['not_your_zone'] = 'This is not your zone.',
        ['already_in_war'] = 'Your organization is already in war',
        ['only_owner'] = 'Only organization owner is allowed to do this',
        ['only_owner_can_start_war'] = 'Only organization owner can start a war',
        ['only_owner_can_access_storage'] = 'Only organization owner can access this storage',
        ['cannot_access_storage'] = 'You can\'t access this storage',
        ['not_enough_currency'] = 'You don\'t have enough currency',
        ['not_enough_currency_start_war'] = 'You don\'t have enough currency to start a war',
        ['not_enough_space'] = 'You dont have enough space',
        ['max_org_capacity_reach'] = 'There is to much members in this organization',
        ['account_required'] = 'You need to create your account first',
        ['feature_turnedoff'] = 'You can\'t attack house zone, enable the feature in the config',
        ['no_nearby_zone'] = 'You dont have a zone that is connected to this one. Take one zone arround before',
        ['not_any_police'] = 'there aren\'t enough police officer to start a war',
        ['not_online'] = "The criminal is not online",
        ['invited'] = "Criminal was invited",
        ['received_invite'] = "You received an invite from organization",
        ['already_invited'] = "Already invited",
        ['success'] = "Operation successfull",
        ['name_cant_contain_spaces'] = 'You cant use spaces.',
        ['cooldown'] = 'Unavailable due to cooldown',
        ['cantStartTimeRange'] = 'You can\'t start war during this time range',
        ['already_accepted'] = 'You cannot take another bounty once current one is settled',
        ['bounty_not_accepted'] = 'You are not part of this bounty yet.',
        ['bounty_set'] = 'Bounty registered',
        ['bounty_deleted'] = 'Bounty deleted',
        ['bounty_set_continental'] = 'A bounty was set to you head. Killing somone in continental zone is prohibited',
        ['bounty_increase_continental'] = 'The bounty on your head has been increased. Killing somone in continental zone is prohibited',
        ['continental_shop_close'] = 'The contiental shop is closed',
        ['bounty_to_low'] = 'The bounty amount is lower than the minimum required ({{amount}} {{currency}}(S))',
        ['waypointSet'] = 'Waypoint was set',
        ['zone_capture_global'] = 'Zone war started',
        ['owned_zone_capturing'] = 'Your zone is attack',
        ['not_enough_criminal_online'] = 'There is not enough criminals to start a war',
        ['not_enough_online'] = 'Zone is underprotected, Required minimum player from the organzation',
        ['zone_max_level_reached'] = 'Max level of zone protection have been reached',
        ['npc_max_level_reached'] = 'Max level of gang protection have been reached'
    }

}

function SendTextMessage(msg)
    -- Default GTA V notification
    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0, 1)

    -- QBCore.Functions.Notify(msg, 'error', 5000)
end
