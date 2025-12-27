Config = {}

-- Enabled additional debug prints as well as displays all the possible (automatic) drop zones on the map
Config.debug = false


--- SETTINGS FOR ESX
Config.esxSettings = {
    enabled = false,

    -- Whether or not to use the new ESX export method
    useNewESXExport = false,
}

--- SETTINGS FOR QBCORE
Config.qbSettings = {
    enabled = true,
}

-------------------------------------------------
--- ITEM
-------------------------------------------------
Config.item = {
    enabled = true,

    flareItemName = 'kq_airdrop_flare',
    cooldown = 60, -- time in seconds

    drop = {
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    }
}

-------------------------------------------------
--- GENERAL
-------------------------------------------------

Config.misc = {
    -- Time in minutes as how long the loot should remain on the ground for
    dropLifetime = 20,

    -- Size of the flare/smoke
    flareScale = 1.5,

    -- How long the smoke should stay for
    flareLifetime = 300, -- time in seconds

    -- Whether or not to show the planes on the map
    planeBlips = true,

    -- Whether or not to show the crates on the map
    crateBlips = true,

    crateBlipsLifetime = 300, -- time in seconds
}

-------------------------------------------------
--- LOOT PICKUP ANIMATION
-------------------------------------------------
Config.pickupAnimation = {
    duration = 2, -- in seconds
    dict = 'mp_take_money_mg',
    anim = 'put_cash_into_bag_loop',
    flag = 1,
}

-------------------------------------------------
--- PLANE
-------------------------------------------------

Config.plane = {
    -- Model of the plane. We recommend using bigger planes to make them more visible to the players
    -- Recommended: titan, streamer216
    model = 'titan',

    -- Color of the plane
    color = { r = 30, g = 40, b = 0 },

    -- Velocity of the plane in m/s
    -- This only affects the flight speed before the drop is dropped. The plane will always slow down right
    -- before dropping the crates

    -- Recommended values between 20 and 100. Anything under or over may cause visual issues
    flightSpeed = 60.0,
}

-------------------------------------------------
--- AUTOMATIC DROPS
-------------------------------------------------

Config.automaticDrop = {
    enabled = true,
    -- Time in minutes
    timeBetweenDrops = 180
}

-- Drop zones for the automatic drop
-- coords = coordinates of the zone
-- radius = radius of the potential drop zone
-- flare = true/false, whether to spawn the flare when the crates hit the ground
-- crates = type of crates that will be dropped. As defined per Config.types. Any amount can be given. Will drop in the stated order with slight delay between each drop
Config.drops = {
    {
        coords = vector3(4387.56, -4524.49, 4.19),
        radius = 250.0,
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    },
    {
        coords = vector3(5004.02, -4542.15, 9.01),
        radius = 250.0,
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    },
    {
        coords = vector3(5280.07, -5106.99, 13.62),
        radius = 250.0,
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    },
    {
        coords = vector3(4940.66, -5210.05, 2.52),
        radius = 250.0,
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    },
    {
        coords = vector3(4776.18, -5738.14, 22.23),
        radius = 250.0,
        flare = true,
        crates = {
            'drugs',
            'ammo',
            'materials',
            'melee',
            'pistols',
            'smgs',
            'assaultrifles',
            'shotguns',
        },
    },
}

-- Types of drops
-- amount = amount of the crates it should drop
-- model = model of the crate
-- chunks = little parts which will be spawned upon crate crash

-- loot
-- -- radius = radius of the loot spawn upon crate crashing
-- -- amount = amount of little crates/items that will spawn
-- -- loot - table of different item crates
-- -- -- hash = model of the drop item
-- -- -- items = list of items, amounts and chances
-- -- -- chance = chance of said "loot" to spawn in relation to other loots
-- -- -- textureVariation = texture variation of the prop
-- -- -- minimumDistanceBetween = minimum distance between the props/loot
-- -- -- offset = object offset
-- -- -- animation = animation used for the pickup
-- -- -- labelSingular = label for one of the items
-- -- -- labelPlurar = label for multiple items
-- -- -- collectMessage = message players will to pickup the item
-- -- -- icon = icon used for target systems
Config.types = {
    ['ammo'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 2,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'pistol_ammo',
                            chance = 25,
                            amount = {
                                min = 5,
                                max = 10,
                            },
                        },
                        {
                            item = 'smg_ammo',
                            chance = 25,
                            amount = {
                                min = 5,
                                max = 10,
                            },
                        },
                        {
                            item = 'rifle_ammo',
                            chance = 25,
                            amount = {
                                min = 5,
                                max = 10,
                            },
                        },
                        {
                            item = 'shotgun_ammo',
                            chance = 25,
                            amount = {
                                min = 5,
                                max = 10,
                            },
                        }
                    },
                    chance = 20,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Ammo',
                    labelPlurar = 'Ammo',
                    collectMessage = 'Pickup the ammo crate.',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['materials'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 5,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'aluminum',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'steel',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'copper',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'rubber',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'plastic',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'glass',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'iron',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        },
                        {
                            item = 'metalscrap',
                            chance = 12.5,
                            amount = {
                                min = 25,
                                max = 100,
                            },
                        }
                    },
                    chance = 40,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Material',
                    labelPlurar = 'Materials',
                    collectMessage = 'Pickup the materials crate',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['melee'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 3,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'weapon_bottle',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_crowbar',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_hammer',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_knuckle',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_machete',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_candyaxe',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_katana',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_dildo',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_sledgehammer',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_bat',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_shiv',
                            chance = 9,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        }
                    },
                    chance = 6,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['pistols'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 3,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'weapon_vintagepistol',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_m9',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_de',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_combatpistol',
                            chance = 7,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_doubleaction',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_pistol50',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_glock18c',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_pistol',
                            chance = 7,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_vp9',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_glock19gen4',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_revolver',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_katana',
                            chance = 7,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_dildo',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_sledgehammer',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_bat',
                            chance = 6,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_shiv',
                            chance = 7,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        }
                    },
                    chance = 5,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['smgs'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 1,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'weapon_mp9',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_smg_mk2',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_smg',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_microsmg',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_mac10',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_machinepistol',
                            chance = 12,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'vityaz',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_mp5',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_uzi',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        }
                    },
                    chance = 4,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['shotguns'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 2,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'weapon_heavyshotgun_mk2',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_combatshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_heavyshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_bullpupshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_sawnoffshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_pumpshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_remington',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_mossberg',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_tacticalshotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_minishotgun',
                            chance = 10,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                    },
                    chance = 3,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['assaultrifles'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 1,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'weapon_ak47',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_m4a1fm',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_ak74',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_aks74',
                            chance = 11,
                            amount = {
                                mmin = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_bullpuprifle',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_carbinerifle_mk2',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_hk416g',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_amrifle',
                            chance = 11,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                        {
                            item = 'weapon_m70',
                            chance = 12,
                            amount = {
                                min = 1,
                                max = 1,
                            },
                        },
                    },
                    chance = 2,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
    ['drugs'] = {
        amount = 1,
        model = 'xm3_prop_xm3_box_pile_tq_01a',
        chunks = 'prop_ld_crate_lid_01',
        loot = {
            -- Radius around which items will spawn from the crashed plane
            radius = 5.0,
            -- Amount of loot items that will be spawned
            amount = 5,
            loot = {
                {
                    hash = 'm23_1_prop_m31_roostercrate_03a',
                    items = {
                        {
                            item = 'drug_ecstasy',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'drug_lean',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'drug_lsd',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'drug_meth',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'vicodin',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'morphine',
                            chance = 7,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'xanax',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'crackrock',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'shrooms',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'heroin',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'moonshine',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'cokebaggy',
                            chance = 6,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'oxy',
                            chance = 11,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                        {
                            item = 'meth',
                            chance = 11,
                            amount = {
                                min = 10,
                                max = 25,
                            },
                        },
                    },
                    chance = 20,
                    textureVariation = 0,
                    minimumDistanceBetween = 1.0,
                    offset = {
                        x = 0.0, y = 0.0, z = 0.0,
                    },
                    animation = Config.pickupAnimation,
                    labelSingular = 'Aluminum',
                    labelPlurar = 'Aluminum',
                    collectMessage = 'Pickup the cocaine brick',
                    icon = 'fas fa-box',
                },
            },
        },
    },
}
