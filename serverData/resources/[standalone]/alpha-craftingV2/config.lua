Config = {} -- Don't Remove This

Config.UseTarget = true -- Compatible with qb-target (If you set the value to true, the menu will be opened with qb-target. If you set the value to false, there will be a blip when you go near it and you will have to press the specified key)
Config.Key = 38 -- Change this if you don't wanna use qb-target (38 = [E]) https://docs.fivem.net/docs/game-references/controls/#controls
Config.KeyName = "E" -- 38 = E

Config.FloorBlip = { -- The blip will be disappear in front of crafting station if you set Config.UseTarget to false

    Marker = 2, -- https://docs.fivem.net/docs/game-references/markers/#markers
    Width = 0.3,
    Height = 0.2,
    Thickness = 0.3,
    -- RGB (Recommended => Hex Color Picker)
    rgbR = 255, -- Red
    rgbG = 255, -- Green
    rgbB = 255, -- Blue
    rgbA = 255, -- (Opacity) (RGB Alpha, Max 255)
    Rotate = 1, -- (1 = True (Rotate Marker), 0 = False (Don't Rotate Marker))

}

Config.UseLevelSystem = true -- If you want level system or not
Config.LevelSystem = { -- Level system config

    MaxLevel = 30, -- Max Level (Don't Make Above 127)
    XPMultiplier = 1.1, -- Each time you level up, it determines the amount of xp needed to reach to another level (Example: Level 1 = 100 XP, Level 2 = 220 XP, Level 3 = 330 XP...)
    GiveXPWhenCraftFails = true -- Even if the player fails to craft the item, give experience to the player?

}

Config.CraftingStations = { -- All crafting stations config

    misccrafting = {

        Title = "Misc Crafting Station", -- Crafting station title
        CraftingStationID = "misccrafting", -- Crafting station id (Must be unique)

        Coords = vector3(1982.28, 5178.28, 47.64), -- Crafting station coords

        MapBlipStatus = false, -- If you want a blip will be disappear in map or not
        MapBlip = { -- The blip will be disappear in minimap if you keep Config.MapBlipStatus as true

            Sprite = 402, -- https://docs.fivem.net/docs/game-references/blips/#blips
            Color = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
            Display = 4, -- 0 = Doesn't show up, ever, anywhere | 2 = Shows on both main map and minimap (Selectable on map) | 3 = Shows on main map only (Selectable on map) | 4 = Shows on main map only (Selectable on map) | 5 = Shows on minimap only | 8 = Shows on both main map and minimap (Not selectable on map)
            Scale = 0.8, -- Blip scale
            Text = "Misc Crafting Station", -- Blip text
            Vector3 = vector3(1982.28, 5178.28, 47.64) -- Crafting station coords

        },

        Target = {

            Vector3 = vector3(1982.28, 5178.28, 47.64),
            Vector3One = 1.35,
            Vector3Two = 2.2,
            Name = "misccrafting", -- Must be same as CraftingStationID
            Heading = 52.92,
            MinZ = 46.64,
            MaxZ = 48.64,

            FAIcon = "fa-solid fa-gun" -- https://fontawesome.com/icons

            --[[
                --Name: weaponcrafting | 2022-06-19T13:10:02Z
                BoxZone:Create(vector3(2196.69, 5594.06, 53.76), 1.35, 2.2, {
                name="weaponcrafting",
                heading=254,
                --debugPoly=true,
                minZ=50.56,
                maxZ=54.56
                })
            ]]--

        },

        Crafts = {

            { -- 1

                Item = "bobby_pin", -- Item ID
                Label = "BobbyPin", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/bobby_pin.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 90, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                }

            },
            { -- 2

                Item = "handcuffs", -- Item ID
                Label = "Handcuffs", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/handcuffs.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 3, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 3

                Item = "radio", -- Item ID
                Label = "Radio", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/radio.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 5, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Electronic Kit",
                        ItemName = "electronickit",
                        Icon = "../../assets/electronickit.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 4

                Item = "laptop", -- Item ID
                Label = "Laptop", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/laptop.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 7, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Glass",
                        ItemName = "glass",
                        Icon = "../../assets/glass.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Electronic Kit",
                        ItemName = "electronickit",
                        Icon = "../../assets/electronickit.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 5

                Item = "radioscanner", -- Item ID
                Label = "Radio Scanner", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/radioscanner.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 9, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Electronic Kit",
                        ItemName = "electronickit",
                        Icon = "../../assets/electronickit.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 6

                Item = "lockpick", -- Item ID
                Label = "Lockpick", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/lockpick.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 2, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 7

                Item = "advancedlockpick", -- Item ID
                Label = "Advance Lockpick", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/advancedlockpick.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 10, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                }

            },
            { -- 9

                Item = "gatecrack", -- Item ID
                Label = "Gatecrack", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/gatecrack.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 20, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 10

                Item = "thermite", -- Item ID
                Label = "Thermite", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/thermite.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 4, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Glass",
                        ItemName = "glass",
                        Icon = "../../assets/glass.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                }

            },
            { -- 11

                Item = "trojan_usb", -- Item ID
                Label = "Trojan USB", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/usb.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 7, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 12

                Item = "bleachwipes", -- Item ID
                Label = "Bleach Wipes", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/bleachwipes.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 4, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Cloth",
                        ItemName = "Cloth",
                        Icon = "../../assets/cloth.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 13

                Item = "wirecutters", -- Item ID
                Label = "Wire Cutters", -- Item's label
                Description = "A tool", -- Item's description
                Category = "misccrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/wirecutters.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 95, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 4, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 1,
                        RemoveOnCraft = true
                    },
                }
            },
        }
    },
-----------------------------------------------------------------------------------------------

    ammocrafting = {

        Title = "Ammo Crafting Station", -- Crafting station title
        CraftingStationID = "ammocrafting", -- Crafting station id (Must be unique)

        Coords = vector3(580.96, 2787.61, 42.21), -- Crafting station coords

        MapBlipStatus = false, -- If you want a blip will be disappear in map or not
        MapBlip = { -- The blip will be disappear in minimap if you keep Config.MapBlipStatus as true

            Sprite = 402, -- https://docs.fivem.net/docs/game-references/blips/#blips
            Color = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
            Display = 4, -- 0 = Doesn't show up, ever, anywhere | 2 = Shows on both main map and minimap (Selectable on map) | 3 = Shows on main map only (Selectable on map) | 4 = Shows on main map only (Selectable on map) | 5 = Shows on minimap only | 8 = Shows on both main map and minimap (Not selectable on map)
            Scale = 0.8, -- Blip scale
            Text = "Ammo Crafting Station", -- Blip text
            Vector3 = vector3(580.96, 2787.61, 42.21) -- Crafting station coords

        },

        Target = {

            Vector3 = vector3(580.96, 2787.61, 42.21),
            Vector3One = 1.35,
            Vector3Two = 2.2,
            Name = "ammocrafting", -- Must be same as CraftingStationID
            Heading = 177.5,
            MinZ = 41.21,
            MaxZ = 43.21,

            FAIcon = "fa-solid fa-gun" -- https://fontawesome.com/icons

            --[[
                --Name: weaponcrafting | 2022-06-19T13:10:02Z
                BoxZone:Create(vector3(2196.69, 5594.06, 53.76), 1.35, 2.2, {
                name="weaponcrafting",
                heading=254,
                --debugPoly=true,
                minZ=50.56,
                maxZ=54.56
                })
            ]]--

        },

        Crafts = {

            { -- 1

                Item = "pistol_ammo", -- Item ID
                Label = "Pistol Ammo", -- Item's label
                Description = "Ammo", -- Item's description
                Category = "ammocrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/pistol_ammo.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 90, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 8, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Bullet Casings",
                        ItemName = "bulletcasing",
                        Icon = "../../assets/casing.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Gunpowder",
                        ItemName = "gunpowder",
                        Icon = "../../assets/gunpowder.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 2

                Item = "smg_ammo", -- Item ID
                Label = "SMG Ammo", -- Item's label
                Description = "Ammo", -- Item's description
                Category = "ammocrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/smg_ammo.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 90, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 18, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Bullet Casings",
                        ItemName = "bulletcasing",
                        Icon = "../../assets/casing.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Gunpowder",
                        ItemName = "gunpowder",
                        Icon = "../../assets/gunpowder.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                }

            },
            { -- 3

                Item = "rifle_ammo", -- Item ID
                Label = "Rifle Ammo", -- Item's label
                Description = "Ammo", -- Item's description
                Category = "ammocrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/rifle_ammo.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 90, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 23, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {

                    {
                        Label = "Bullet Casings",
                        ItemName = "bulletcasing",
                        Icon = "../../assets/casing.png",
                        Amount = 4,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Gunpowder",
                        ItemName = "gunpowder",
                        Icon = "../../assets/gunpowder.png",
                        Amount = 4,
                        RemoveOnCraft = true
                    },
                }

            },
            { -- 4

                Item = "shotgun_ammo", -- Item ID
                Label = "Shotgun Ammo", -- Item's label
                Description = "Ammo", -- Item's description
                Category = "ammocrafting", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/shotgun_ammo.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 90, -- Probability of successful item production ( 90 = %90... )
                Time = 30, -- Craft time as seconds
                Level = 13, -- Level required to craft the item
                XP = 25, -- Amount of xp to be awarded after item crafting
                Jobs = { -- Jobs can craft this item (Leave empty if you want everyone to be able to craft)

                },
                Requirements = {
                    {
                        Label = "Bullet Casings",
                        ItemName = "bulletcasing",
                        Icon = "../../assets/casing.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Gunpowder",
                        ItemName = "gunpowder",
                        Icon = "../../assets/gunpowder.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
        }
    },

    bennyscraft = {

        Title = "Mechanic Craft Station", -- Crafting station title
        CraftingStationID = "bennyscraft", -- Crafting station id (Must be unique)

        Coords = vector3(58.49, -1783.00, 29.13), -- Crafting station coords

        MapBlipStatus = false, -- If you want a blip will be disappear in map or not
        MapBlip = { -- The blip will be disappear in minimap if you keep Config.MapBlipStatus as true

            Sprite = 402, -- https://docs.fivem.net/docs/game-references/blips/#blips
            Color = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
            Display = 4, -- 0 = Doesn't show up, ever, anywhere | 2 = Shows on both main map and minimap (Selectable on map) | 3 = Shows on main map only (Selectable on map) | 4 = Shows on main map only (Selectable on map) | 5 = Shows on minimap only | 8 = Shows on both main map and minimap (Not selectable on map)
            Scale = 0.8, -- Blip scale
            Text = "Bennys Craft Station", -- Blip text
            Vector3 = vector3(58.49, -1783.00, 29.13) -- Crafting station coords

        },

        Target = {

            Vector3 = vector3(58.49, -1783.00, 29.13),
            Vector3One = 1.35,
            Vector3Two = 2.2,
            Name = "bennyscraft", -- Must be same as CraftingStationID
            Heading = 90.00,
            MinZ = 28.13,
            MaxZ = 30.13,

            FAIcon = "fa-solid fa-gun" -- https://fontawesome.com/icons

            --[[
                --Name: weaponcrafting | 2022-06-19T13:10:02Z
                BoxZone:Create(vector3(2196.69, 5594.06, 53.76), 1.35, 2.2, {
                name="weaponcrafting",
                heading=254,
                --debugPoly=true,
                minZ=50.56,
                maxZ=54.56
                })
            ]]--

        },

        Crafts = {

            { -- 1

                Item = "tyre_replacement", -- Item ID
                Label = "Tyre Replacement", -- Item's label
                Description = "To Replace a Tyre", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    }
                }
            },
            { -- 2

                Item = "engine_oil", -- Item ID
                Label = "Engine Oil x10", -- Item's label
                Description = "Engine Oil", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/engine_oil.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 4
                Item = "clutch_replacement", -- Item ID
                Label = "Clutch Replacement", -- Item's label
                Description = "clutch_replacement", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/clutch_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                }
            },         
            { -- 5
                Item = "air_filter", -- Item ID
                Label = "Air Filter", -- Item's label
                Description = "air_filter", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/air_filter.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 6
                Item = "spark_plug", -- Item ID
                Label = "Spark Plug", -- Item's label
                Description = "spark_plug", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/spark_plug.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 7
                Item = "suspension_parts", -- Item ID
                Label = "Suspension Parts", -- Item's label
                Description = "suspension_parts", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/suspension_parts.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 8
                Item = "brakepad_replacement", -- Item ID
                Label = "Brakepad Replacement", -- Item's label
                Description = "brakepad_replacement", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/brakepad_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    
                }
            },
            { -- 9
                Item = "mechanic_tablet", -- Item ID
                Label = "Mechanic Tablet", -- Item's label
                Description = "mechanic_tablet", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/mechanic_tablet.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 10
                Item = "duct_tape", -- Item ID
                Label = "Duct Tape", -- Item's label
                Description = "duct_tape", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/duct_tape.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 11
                Item = "repair_kit", -- Item ID
                Label = "Repair Kit x10", -- Item's label
                Description = "repair_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/repair_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 12
                Item = "cleaning_kit", -- Item ID
                Label = "Cleaning Kit", -- Item's label
                Description = "cleaning_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cleaning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 13
                Item = "extras_kit", -- Item ID
                Label = "Extras Kit x10", -- Item's label
                Description = "extras_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/extras_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 14
                Item = "tyre_smoke_kit", -- Item ID
                Label = "Tyre Smoke Kit", -- Item's label
                Description = "tyre_smoke_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_smoke_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 15
                Item = "vehicle_wheels", -- Item ID
                Label = "Vehicle Wheels", -- Item's label
                Description = "vehicle_wheels", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/vehicle_wheels.png", -- Item's icon

                Quantity = 4, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 16
                Item = "respray_kit", -- Item ID
                Label = "Respray Kit x10", -- Item's label
                Description = "respray_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/respray_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 17
                Item = "cosmetic_part", -- Item ID
                Label = "Cosmetic Part x10", -- Item's label
                Description = "cosmetic_part", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cosmetic_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Glass",
                        ItemName = "glass",
                        Icon = "../../assets/glass.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 18
                Item = "stancing_kit", -- Item ID
                Label = "Stancing Kit", -- Item's label
                Description = "stancing_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/stancing_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 19
                Item = "lighting_controller", -- Item ID
                Label = "Lighting Controller x10", -- Item's label
                Description = "lighting_controller", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/lighting_controller.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 20
                Item = "drift_tuning_kit", -- Item ID
                Label = "Drift Tuning Kit", -- Item's label
                Description = "drift_tuning_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/drift_tuning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 21
                Item = "fwd_drivetrain", -- Item ID
                Label = "FWD Drivetrain", -- Item's label
                Description = "fwd_drivetrain", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/fwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 22
                Item = "rwd_drivetrain", -- Item ID
                Label = "RWD Drivetrain", -- Item's label
                Description = "rwd_drivetrain", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/rwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 23
                Item = "awd_drivetrain", -- Item ID
                Label = "AWD Drivetrain", -- Item's label
                Description = "awd_drivetrain", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/awd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 24
                Item = "rev_coolant", -- Item ID
                Label = "EV Coolant", -- Item's label
                Description = "ev_coolant", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_coolant.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 25
                Item = "ev_battery", -- Item ID
                Label = "EV Battery", -- Item's label
                Description = "ev_battery", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_battery.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 26
                Item = "ev_motor", -- Item ID
                Label = "EV Motor", -- Item's label
                Description = "ev_motor", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_motor.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    
                }
            },
            { -- 27
                Item = "turbocharger", -- Item ID
                Label = "Turbocharger", -- Item's label
                Description = "turbocharger", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/turbocharger.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 28
                Item = "i4_engine", -- Item ID
                Label = "I4 Engine", -- Item's label
                Description = "i4_engine", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/i4_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 29
                Item = "v6_engine", -- Item ID
                Label = "V6 Engine", -- Item's label
                Description = "v6_engine", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v6_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 30
                Item = "v8_engine", -- Item ID
                Label = "V8 Engine", -- Item's label
                Description = "v8_engine", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v8_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 31
                Item = "v12_engine", -- Item ID
                Label = "V12 Engine", -- Item's label
                Description = "v12_engine", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v12_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 25,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 32
                Item = "ceramic_brakes", -- Item ID
                Label = "Ceramic Brakes", -- Item's label
                Description = "ceramic_brakes", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ceramic_brakes.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 33
                Item = "offroad_tyres", -- Item ID
                Label = "Offroad Tyres", -- Item's label
                Description = "offroad_tyres", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/offroad_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 34
                Item = "semi_slick_tyres", -- Item ID
                Label = "Semi Slick Tyres", -- Item's label
                Description = "semi_slick_tyres", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/semi_slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 35
                Item = "slick_tyres", -- Item ID
                Label = "Slick Tyres", -- Item's label
                Description = "slick_tyres", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 36
                Item = "bulletproof_tyres", -- Item ID
                Label = "Bulletproof Tyres", -- Item's label
                Description = "bulletproof_tyres", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/bulletproof_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 38
                Item = "manual_gearbox", -- Item ID
                Label = "Manual Gearbox", -- Item's label
                Description = "manual_gearbox", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/manual_gearbox.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 39
                Item = "performance_part", -- Item ID
                Label = "Performance Part x10", -- Item's label
                Description = "performance_part", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/performance_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 40
                Item = "nitrous_install_kit", -- Item ID
                Label = "Nitrous Install Kit", -- Item's label
                Description = "nitrous_install_kit", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_install_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 42
                Item = "nitrous_bottle", -- Item ID
                Label = "Nitrous Bottle", -- Item's label
                Description = "nitrous_bottle", -- Item's description
                Category = "bennyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_bottle.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
        }
    },
    -----------------------------------------------------------------------------------------------------------------------------
    rossyscraft = {

        Title = "Mechanic Craft Station", -- Crafting station title
        CraftingStationID = "rossyscraft", -- Crafting station id (Must be unique)

        Coords = vector3(-320.26, -120.45, 39.01), -- Crafting station coords

        MapBlipStatus = false, -- If you want a blip will be disappear in map or not
        MapBlip = { -- The blip will be disappear in minimap if you keep Config.MapBlipStatus as true

            Sprite = 402, -- https://docs.fivem.net/docs/game-references/blips/#blips
            Color = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
            Display = 4, -- 0 = Doesn't show up, ever, anywhere | 2 = Shows on both main map and minimap (Selectable on map) | 3 = Shows on main map only (Selectable on map) | 4 = Shows on main map only (Selectable on map) | 5 = Shows on minimap only | 8 = Shows on both main map and minimap (Not selectable on map)
            Scale = 0.8, -- Blip scale
            Text = "Rossys Craft Station", -- Blip text
            Vector3 = vector3(-320.26, -120.45, 39.01) -- Crafting station coords

        },

        Target = {

            Vector3 = vector3(-320.26, -120.45, 39.01),
            Vector3One = 1.35,
            Vector3Two = 2.2,
            Name = "rossyscraft", -- Must be same as CraftingStationID
            Heading = 90.00,
            MinZ = 38.01,
            MaxZ = 40.01,

            FAIcon = "fa-solid fa-gun" -- https://fontawesome.com/icons

            --[[
                --Name: weaponcrafting | 2022-06-19T13:10:02Z
                BoxZone:Create(vector3(2196.69, 5594.06, 53.76), 1.35, 2.2, {
                name="weaponcrafting",
                heading=254,
                --debugPoly=true,
                minZ=50.56,
                maxZ=54.56
                })
            ]]--

        },

        Crafts = {

            { -- 1

                Item = "tyre_replacement", -- Item ID
                Label = "Tyre Replacement", -- Item's label
                Description = "To Replace a Tyre", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    }
                }
            },
            { -- 2

                Item = "engine_oil", -- Item ID
                Label = "Engine Oil x10", -- Item's label
                Description = "Engine Oil", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/engine_oil.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 4
                Item = "clutch_replacement", -- Item ID
                Label = "Clutch Replacement", -- Item's label
                Description = "clutch_replacement", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/clutch_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                }
            },         
            { -- 5
                Item = "air_filter", -- Item ID
                Label = "Air Filter", -- Item's label
                Description = "air_filter", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/air_filter.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 6
                Item = "spark_plug", -- Item ID
                Label = "Spark Plug", -- Item's label
                Description = "spark_plug", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/spark_plug.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 7
                Item = "suspension_parts", -- Item ID
                Label = "Suspension Parts", -- Item's label
                Description = "suspension_parts", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/suspension_parts.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 8
                Item = "brakepad_replacement", -- Item ID
                Label = "Brakepad Replacement", -- Item's label
                Description = "brakepad_replacement", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/brakepad_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    
                }
            },
            { -- 9
                Item = "mechanic_tablet", -- Item ID
                Label = "Mechanic Tablet", -- Item's label
                Description = "mechanic_tablet", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/mechanic_tablet.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 10
                Item = "duct_tape", -- Item ID
                Label = "Duct Tape", -- Item's label
                Description = "duct_tape", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/duct_tape.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 11
                Item = "repair_kit", -- Item ID
                Label = "Repair Kit x10", -- Item's label
                Description = "repair_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/repair_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 12
                Item = "cleaning_kit", -- Item ID
                Label = "Cleaning Kit", -- Item's label
                Description = "cleaning_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cleaning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 13
                Item = "extras_kit", -- Item ID
                Label = "Extras Kit x10", -- Item's label
                Description = "extras_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/extras_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 14
                Item = "tyre_smoke_kit", -- Item ID
                Label = "Tyre Smoke Kit", -- Item's label
                Description = "tyre_smoke_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_smoke_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 15
                Item = "vehicle_wheels", -- Item ID
                Label = "Vehicle Wheels", -- Item's label
                Description = "vehicle_wheels", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/vehicle_wheels.png", -- Item's icon

                Quantity = 4, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 16
                Item = "respray_kit", -- Item ID
                Label = "Respray Kit x10", -- Item's label
                Description = "respray_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/respray_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 17
                Item = "cosmetic_part", -- Item ID
                Label = "Cosmetic Part x10", -- Item's label
                Description = "cosmetic_part", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cosmetic_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Glass",
                        ItemName = "glass",
                        Icon = "../../assets/glass.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 18
                Item = "stancing_kit", -- Item ID
                Label = "Stancing Kit", -- Item's label
                Description = "stancing_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/stancing_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 19
                Item = "lighting_controller", -- Item ID
                Label = "Lighting Controller x10", -- Item's label
                Description = "lighting_controller", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/lighting_controller.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 20
                Item = "drift_tuning_kit", -- Item ID
                Label = "Drift Tuning Kit", -- Item's label
                Description = "drift_tuning_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/drift_tuning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 21
                Item = "fwd_drivetrain", -- Item ID
                Label = "FWD Drivetrain", -- Item's label
                Description = "fwd_drivetrain", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/fwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 22
                Item = "rwd_drivetrain", -- Item ID
                Label = "RWD Drivetrain", -- Item's label
                Description = "rwd_drivetrain", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/rwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 23
                Item = "awd_drivetrain", -- Item ID
                Label = "AWD Drivetrain", -- Item's label
                Description = "awd_drivetrain", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/awd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 24
                Item = "rev_coolant", -- Item ID
                Label = "EV Coolant", -- Item's label
                Description = "ev_coolant", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_coolant.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 25
                Item = "ev_battery", -- Item ID
                Label = "EV Battery", -- Item's label
                Description = "ev_battery", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_battery.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 26
                Item = "ev_motor", -- Item ID
                Label = "EV Motor", -- Item's label
                Description = "ev_motor", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_motor.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                   
                }
            },
            { -- 27
                Item = "turbocharger", -- Item ID
                Label = "Turbocharger", -- Item's label
                Description = "turbocharger", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/turbocharger.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 28
                Item = "i4_engine", -- Item ID
                Label = "I4 Engine", -- Item's label
                Description = "i4_engine", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/i4_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 29
                Item = "v6_engine", -- Item ID
                Label = "V6 Engine", -- Item's label
                Description = "v6_engine", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v6_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 30
                Item = "v8_engine", -- Item ID
                Label = "V8 Engine", -- Item's label
                Description = "v8_engine", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v8_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 31
                Item = "v12_engine", -- Item ID
                Label = "V12 Engine", -- Item's label
                Description = "v12_engine", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v12_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 25,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 32
                Item = "ceramic_brakes", -- Item ID
                Label = "Ceramic Brakes", -- Item's label
                Description = "ceramic_brakes", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ceramic_brakes.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 33
                Item = "offroad_tyres", -- Item ID
                Label = "Offroad Tyres", -- Item's label
                Description = "offroad_tyres", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/offroad_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 34
                Item = "semi_slick_tyres", -- Item ID
                Label = "Semi Slick Tyres", -- Item's label
                Description = "semi_slick_tyres", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/semi_slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 35
                Item = "slick_tyres", -- Item ID
                Label = "Slick Tyres", -- Item's label
                Description = "slick_tyres", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 36
                Item = "bulletproof_tyres", -- Item ID
                Label = "Bulletproof Tyres", -- Item's label
                Description = "bulletproof_tyres", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/bulletproof_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 38
                Item = "manual_gearbox", -- Item ID
                Label = "Manual Gearbox", -- Item's label
                Description = "manual_gearbox", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/manual_gearbox.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 39
                Item = "performance_part", -- Item ID
                Label = "Performance Part x10", -- Item's label
                Description = "performance_part", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/performance_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 40
                Item = "nitrous_install_kit", -- Item ID
                Label = "Nitrous Install Kit", -- Item's label
                Description = "nitrous_install_kit", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_install_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 42
                Item = "nitrous_bottle", -- Item ID
                Label = "Nitrous Bottle", -- Item's label
                Description = "nitrous_bottle", -- Item's description
                Category = "rossyscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_bottle.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
        }
    },
    -----------------------------------------------------------------------------------------------------------------------------
    autoexoticscraft = {

        Title = "Mechanic Craft Station", -- Crafting station title
        CraftingStationID = "autoexoticscraft", -- Crafting station id (Must be unique)

        Coords = vector3(558.77, -172.47, 54.51), -- Crafting station coords

        MapBlipStatus = false, -- If you want a blip will be disappear in map or not
        MapBlip = { -- The blip will be disappear in minimap if you keep Config.MapBlipStatus as true

            Sprite = 402, -- https://docs.fivem.net/docs/game-references/blips/#blips
            Color = 3, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
            Display = 4, -- 0 = Doesn't show up, ever, anywhere | 2 = Shows on both main map and minimap (Selectable on map) | 3 = Shows on main map only (Selectable on map) | 4 = Shows on main map only (Selectable on map) | 5 = Shows on minimap only | 8 = Shows on both main map and minimap (Not selectable on map)
            Scale = 0.8, -- Blip scale
            Text = "Auto Exotics Craft Station", -- Blip text
            Vector3 = vector3(558.77, -172.47, 54.51) -- Crafting station coords

        },

        Target = {

            Vector3 = vector3(558.77, -172.47, 54.51),
            Vector3One = 1.35,
            Vector3Two = 2.2,
            Name = "autoexoticscraft", -- Must be same as CraftingStationID
            Heading = 359.0,
            MinZ = 53.51,
            MaxZ = 55.51,

            FAIcon = "fa-solid fa-gun" -- https://fontawesome.com/icons

            --[[
                --Name: weaponcrafting | 2022-06-19T13:10:02Z
                BoxZone:Create(vector3(2196.69, 5594.06, 53.76), 1.35, 2.2, {
                name="weaponcrafting",
                heading=254,
                --debugPoly=true,
                minZ=50.56,
                maxZ=54.56
                })
            ]]--

        },

        Crafts = {

            { -- 1

                Item = "tyre_replacement", -- Item ID
                Label = "Tyre Replacement", -- Item's label
                Description = "To Replace a Tyre", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    }
                }
            },
            { -- 2

                Item = "engine_oil", -- Item ID
                Label = "Engine Oil x10", -- Item's label
                Description = "Engine Oil", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/engine_oil.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 4
                Item = "clutch_replacement", -- Item ID
                Label = "Clutch Replacement", -- Item's label
                Description = "clutch_replacement", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/clutch_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                }
            },         
            { -- 5
                Item = "air_filter", -- Item ID
                Label = "Air Filter", -- Item's label
                Description = "air_filter", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/air_filter.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 6
                Item = "spark_plug", -- Item ID
                Label = "Spark Plug", -- Item's label
                Description = "spark_plug", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/spark_plug.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 7
                Item = "suspension_parts", -- Item ID
                Label = "Suspension Parts", -- Item's label
                Description = "suspension_parts", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/suspension_parts.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 8
                Item = "brakepad_replacement", -- Item ID
                Label = "Brakepad Replacement", -- Item's label
                Description = "brakepad_replacement", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/brakepad_replacement.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    
                }
            },
            { -- 9
                Item = "mechanic_tablet", -- Item ID
                Label = "Mechanic Tablet", -- Item's label
                Description = "mechanic_tablet", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/mechanic_tablet.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 10
                Item = "duct_tape", -- Item ID
                Label = "Duct Tape", -- Item's label
                Description = "duct_tape", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/duct_tape.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 11
                Item = "repair_kit", -- Item ID
                Label = "Repair Kit x10", -- Item's label
                Description = "repair_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/repair_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 12
                Item = "cleaning_kit", -- Item ID
                Label = "Cleaning Kit", -- Item's label
                Description = "cleaning_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cleaning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 13
                Item = "extras_kit", -- Item ID
                Label = "Extras Kit x10", -- Item's label
                Description = "extras_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/extras_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 14
                Item = "tyre_smoke_kit", -- Item ID
                Label = "Tyre Smoke Kit", -- Item's label
                Description = "tyre_smoke_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/tyre_smoke_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 15
                Item = "vehicle_wheels", -- Item ID
                Label = "Vehicle Wheels", -- Item's label
                Description = "vehicle_wheels", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/vehicle_wheels.png", -- Item's icon

                Quantity = 4, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 16
                Item = "respray_kit", -- Item ID
                Label = "Respray Kit x10", -- Item's label
                Description = "respray_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/respray_kit.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 17
                Item = "cosmetic_part", -- Item ID
                Label = "Cosmetic Part x10", -- Item's label
                Description = "cosmetic_part", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/cosmetic_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Glass",
                        ItemName = "glass",
                        Icon = "../../assets/glass.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 18
                Item = "stancing_kit", -- Item ID
                Label = "Stancing Kit", -- Item's label
                Description = "stancing_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/stancing_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 19
                Item = "lighting_controller", -- Item ID
                Label = "Lighting Controller x10", -- Item's label
                Description = "lighting_controller", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/lighting_controller.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 100,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 20
                Item = "drift_tuning_kit", -- Item ID
                Label = "Drift Tuning Kit", -- Item's label
                Description = "drift_tuning_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/drift_tuning_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 21
                Item = "fwd_drivetrain", -- Item ID
                Label = "FWD Drivetrain", -- Item's label
                Description = "fwd_drivetrain", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/fwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 22
                Item = "rwd_drivetrain", -- Item ID
                Label = "RWD Drivetrain", -- Item's label
                Description = "rwd_drivetrain", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/rwd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 23
                Item = "awd_drivetrain", -- Item ID
                Label = "AWD Drivetrain", -- Item's label
                Description = "awd_drivetrain", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/awd_drivetrain.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 24
                Item = "ev_coolant", -- Item ID
                Label = "EV Coolant", -- Item's label
                Description = "ev_coolant", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_coolant.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 25
                Item = "ev_battery", -- Item ID
                Label = "EV Battery", -- Item's label
                Description = "ev_battery", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_battery.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Copper",
                        ItemName = "copper",
                        Icon = "../../assets/copper.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 26
                Item = "ev_motor", -- Item ID
                Label = "EV Motor", -- Item's label
                Description = "ev_motor", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ev_motor.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 27
                Item = "turbocharger", -- Item ID
                Label = "Turbocharger", -- Item's label
                Description = "turbocharger", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/turbocharger.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 28
                Item = "i4_engine", -- Item ID
                Label = "I4 Engine", -- Item's label
                Description = "i4_engine", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/i4_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 10,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 29
                Item = "v6_engine", -- Item ID
                Label = "V6 Engine", -- Item's label
                Description = "v6_engine", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v6_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 30
                Item = "v8_engine", -- Item ID
                Label = "V8 Engine", -- Item's label
                Description = "v8_engine", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v8_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 31
                Item = "v12_engine", -- Item ID
                Label = "V12 Engine", -- Item's label
                Description = "v12_engine", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/v12_engine.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 25,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 32
                Item = "ceramic_brakes", -- Item ID
                Label = "Ceramic Brakes", -- Item's label
                Description = "ceramic_brakes", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/ceramic_brakes.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 33
                Item = "offroad_tyres", -- Item ID
                Label = "Offroad Tyres", -- Item's label
                Description = "offroad_tyres", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/offroad_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 20,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 34
                Item = "semi_slick_tyres", -- Item ID
                Label = "Semi Slick Tyres", -- Item's label
                Description = "semi_slick_tyres", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/semi_slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 35
                Item = "slick_tyres", -- Item ID
                Label = "Slick Tyres", -- Item's label
                Description = "slick_tyres", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/slick_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 36
                Item = "bulletproof_tyres", -- Item ID
                Label = "Bulletproof Tyres", -- Item's label
                Description = "bulletproof_tyres", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/bulletproof_tyres.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 15,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 38
                Item = "manual_gearbox", -- Item ID
                Label = "Manual Gearbox", -- Item's label
                Description = "manual_gearbox", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/manual_gearbox.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Rubber",
                        ItemName = "rubber",
                        Icon = "../../assets/rubber.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 7,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 39
                Item = "performance_part", -- Item ID
                Label = "Performance Part x10", -- Item's label
                Description = "performance_part", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/performance_part.png", -- Item's icon

                Quantity = 10, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Steel",
                        ItemName = "steel",
                        Icon = "../../assets/steel.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 50,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 40
                Item = "nitrous_install_kit", -- Item ID
                Label = "Nitrous Install Kit", -- Item's label
                Description = "nitrous_install_kit", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_install_kit.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
            { -- 42
                Item = "nitrous_bottle", -- Item ID
                Label = "Nitrous Bottle", -- Item's label
                Description = "nitrous_bottle", -- Item's description
                Category = "autoexoticscraft", -- Item's category, must be same as CraftingStationID
                Icon = "../../assets/nitrous_bottle.png", -- Item's icon

                Quantity = 1, -- Quantity to be given when crafted
                SuccessRate = 100, -- Probability of successful item production ( 90 = %90... )
                Time = 5, -- Craft time as seconds
                Level = 1, -- Level required to craft the item
                XP = 0, -- Amount of xp to be awarded after item crafting
                Jobs = { --"bennys"
                },
                Requirements = {

                    {
                        Label = "Aluminum",
                        ItemName = "aluminum",
                        Icon = "../../assets/aluminum.png",
                        Amount = 5,
                        RemoveOnCraft = true
                    },

                    {
                        Label = "Iron",
                        ItemName = "iron",
                        Icon = "../../assets/iron.png",
                        Amount = 3,
                        RemoveOnCraft = true
                    },
                    {
                        Label = "Plastic",
                        ItemName = "plastic",
                        Icon = "../../assets/plastic.png",
                        Amount = 2,
                        RemoveOnCraft = true
                    },
                }
            },
        }
    },
}




