-----------------------------------------------------------------------------------
-- WAIT! Before editing this file manually, try our new easy configuration tool! --
--               https://configurator.jgscripts.com/dealerships                  --
-----------------------------------------------------------------------------------
Config = {}

-- Localisation
Config.Locale = "en"
Config.NumberAndDateFormat = "en-US"
Config.Currency = "USD"
Config.SpeedUnit = "mph" -- or "kph"

-- Framework & Integrations
Config.Framework = "QBCore" -- or "QBCore", "Qbox", "ESX"
Config.FuelSystem = "cdn-fuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "okokGasStation", "nd_fuel", "myFuel", "ti_fuel", "Renewed-Fuel", "rcore_fuel", "qs-fuelstations", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "MrNewbVehicleKeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "mk_vehiclekeys", "wasabi_carlock", "cd_garage", "okokGarage", "t1ger_keys", "Renewed", "tgiann-hotwire", "none"
Config.Notifications = "ox_lib" -- or "default", "okokNotify", "ox_lib", "ps-ui"
Config.DrawText = "ox_lib" -- or "jg-textui", "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"

-- Text UI prompts
Config.OpenShowroomPrompt = "[E] Open Showroom"
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = "[E] View in Showroom"
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = "[E] Dealership Management"
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = "[E] Sell Vehicle"
Config.SellVehicleKeyBind = 38

-- If you don't know what this means, don't touch this
-- If you know what this means, I do recommend enabling it but be aware you may experience reliability issues on more populated servers
-- Having significant issues? I beg you to just set it back to false before opening a ticket with us
-- Want to read my rant about server spawned vehicles? https://docs.jgscripts.com/advanced-garages/misc/why-are-you-not-using-createvehicleserversetter-by-default
Config.SpawnVehiclesWithServerSetter = false

-- Finance (to disable finance, you have to do it on a per-location basis with Config.DealershipLocations below)
Config.FinancePayments = 12
Config.FinanceDownPayment = 0.1 -- 0.1 means 10%
Config.FinanceInterest = 0.1 -- 0.1 means 10%
Config.FinancePaymentInterval = 24 -- in hours
Config.FinancePaymentFailedHoursUntilRepo = 1 -- in hours
Config.MaxFinancedVehiclesPerPlayer = 5

-- Little vehicle preview images in the garage UI - learn more/add custom images: https://docs.jgscripts.com/advanced-garages/vehicle-images
Config.ShowVehicleImages = true

-- Vehicle purchases
Config.PlateFormat = "1AA111AA" -- https://docs.jgscripts.com/dealerships/plate-format
Config.HideVehicleStats = false

-- Test drives
Config.TestDrivePlate = "TEST1111" -- This is a plate seed so it'll be random every time (read: https://docs.jgscripts.com/dealerships/plate-format)
Config.TestDriveTimeSeconds = 120
Config.TestDriveNotInBucket = false -- Set to true for everyone to see the test driven vehicle (player is instanced by default)

-- Display vehicles (showroom)
Config.DisplayVehiclesPlate = "DEALER"
Config.DisplayVehiclesHidePurchasePrompt = false

-- Dealership stock purchases
Config.DealerPurchasePrice = 0.8 -- 0.8 = Dealers pay 80% of vehicle price
Config.VehicleOrderTime = 1 -- in mins
Config.ManagerCanChangePriceOfVehicles = true -- Managers can change the price of vehicles in the dealership

-- Vehicle colour options (for purchases & display vehicles)
Config.UseRGBColors = true -- this will use the index instead of hex, see https://pastebin.com/pwHci0xK (hex will still be used in the ui)
Config.VehicleColourOptions = {
  {label = "Red", hex = "#e81416", index = 27},
  {label = "Orange", hex = "#ff7518", index = 38},
  {label = "Yellow", hex = "#ffbf00", index = 88},
  {label = "Green", hex = "#79c314", index = 92},
  {label = "Blue", hex = "#487de7", index = 64},
  {label = "Purple", hex = "#70369d", index = 145},
  {label = "Black", hex = "#000000", index = 0},
  {label = "White", hex = "#ffffff", index = 111},
}

Config.Categories = {
  planes = "Planes",
  sportsclassics = "Sports Classics",
  sedans = "Sedans",
  compacts = "Compacts",
  motorcycles = "Motorcycles",
  super = "Super",
  offroad = "Offroad",
  helicopters = "Helicopters",
  coupes = "Coupes",
  muscle = "Muscle",
  boats = "Boats",
  vans = "Vans",
  sports = "Sports",
  suvs = "SUVs",
  commercial = "Commercial",
  cycles = "Cycles",
  industrial = "Industrial"
}

Config.DealershipLocations = {
  ["pdm"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-55.99, -1096.59, 26.42),
      size = 5
    },
    openManagement = {
      coords = vector3(-30.43, -1106.84, 26.42),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-27.89, -1082.1, 26.64),
      size = 5
    },
    purchaseSpawn = vector4(-13.68, -1092.31, 26.67, 159.82),
    testDriveSpawn = vector4(-49.77, -1110.83, 26.44, 75.94),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableTestDrive = true,
    hideBlip = false,
    blip = {
      id = 326,
      color = 2,
      scale = 0.7
    },
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableFinance = true,
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
    disableShowroomPurchase = false,
    job = "cardealer", -- Owned dealerships only
    directSaleDistance = 50,
  },
  ["luxury"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-705.46, -284.02, 37.00),
      size = 5
    },
    openManagement = {
      coords = vector3(-714.53, -289.93, 42.96),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-734.75, -282.09, 36.95),
      size = 5
    },
    purchaseSpawn = vector4(-739.13, -262.08, 36.37, 24),
    testDriveSpawn = vector4(-739.13, -262.08, 36.37, 24),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 523,
      color = 38,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["tuners"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(906.80, -923.87, 26.28),
      size = 5
    },
    openManagement = {
      coords = vector3(911.07, -932.51, 26.29),
      size = 5
    },
    sellVehicle = {
      coords = vector3(890.79, -917.27, 26.28),
      size = 5
    },
    purchaseSpawn = vector4(877.38, -940.46, 25.71, 90),
    testDriveSpawn = vector4(877.73, -944.47, 25.71, 90),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 523,
      color = 8,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["exotics"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(557.48, -253.02, 49.98),
      size = 5
    },
    openManagement = {
      coords = vector3(563.45, -240.39, 49.98),
      size = 5
    },
    sellVehicle = {
      coords = vector3(544.93, -225.60, 50.94),
      size = 5
    },
    purchaseSpawn = vector4(543.10, -238.45, 49.27, 67),
    testDriveSpawn = vector4(543.10, -238.45, 49.27, 67),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 523,
      color = 69,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["muscle"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(1652.52, 4843.12, 42.03),
      size = 5
    },
    openManagement = {
      coords = vector3(1651.79, 4847.67, 42.03),
      size = 2
    },
    sellVehicle = {
      coords = vector3(1643.62, 4821.61, 42.06),
      size = 5
    },
    purchaseSpawn = vector4(1665.02, 4839.86, 41.40, 186),
    testDriveSpawn = vector4(1665.02, 4839.86, 41.40, 186),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 662,
      color = 27,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["motorcycle"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-871.38, -193.73, 37.84),
      size = 5
    },
    openManagement = {
      coords = vector3(-867.76, -204.13, 37.84),
      size = 2
    },
    sellVehicle = {
      coords = vector3(-852.24, -217.41, 37.68),
      size = 5
    },
    purchaseSpawn = vector4(-853.74, -189.74, 36.95, 210),
    testDriveSpawn = vector4(-853.74, -189.74, 36.95, 210),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 661,
      color = 1,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["sports"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(70.96, -1806.83, 29.12),
      size = 5
    },
    openManagement = {
      coords = vector3(88.24, -1739.89, 29.29),
      size = 2
    },
    sellVehicle = {
      coords = vector3(103.99, -1751.89, 29.32),
      size = 5
    },
    purchaseSpawn = vector4(96.80, -1745.22, 28.74, 324),
    testDriveSpawn = vector4(96.80, -1745.22, 28.74, 324),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 669,
      color = 46,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["offroad"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-234.92, 6216.15, 31.94),
      size = 5
    },
    openManagement = {
      coords = vector3(-233.48, 6228.21, 32.00),
      size = 2
    },
    sellVehicle = {
      coords = vector3(-250.97, 6218.58, 31.50),
      size = 5
    },
    purchaseSpawn = vector4(-248.57, 6206.63, 30.92, 133),
    testDriveSpawn = vector4(-237.41, 6195.21, 30.92, 136),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 659,
      color = 47,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["commericial"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(1210.13, -3160.39, 5.53),
      size = 2
    },
    openManagement = {
      coords = vector3(937.30, -928.15, 26.28),
      size = 2
    },
    sellVehicle = {
      coords = vector3(1233.76, -3231.05, 5.65),
      size = 5
    },
    purchaseSpawn = vector4(1192.52, -3229.58, 6.06, 89),
    testDriveSpawn = vector4(1179.30, -3196.15, 6.10, 89),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = false,
    blip = {
      id = 659,
      color = 47,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["emergency"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-663.67, 333.93, 77.71),
      size = 5
    },
    openManagement = {
      coords = vector3(-660.43, 356.54, 77.77),
      size = 2
    },
    sellVehicle = {
      coords = vector3(-852.24, -217.41, 37.68),
      size = 5
    },
    purchaseSpawn = vector4(-682.22, 351.79, 77.36, 85),
    testDriveSpawn = vector4(-682.22, 351.79, 77.36, 85),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = true,
    hideBlip = true,
    blip = {
      id = 661,
      color = 1,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["oneofone"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(0.0, 0.0, 0.0),
      size = 5
    },
    openManagement = {
      coords = vector3(0.0, 0.0, 0.0),
      size = 5
    },
    sellVehicle = {
      coords = vector3(0.0, 0.0, 0.0),
      size = 5
    },
    purchaseSpawn = vector4(0.0, 0.0, 0.0, 293),
    testDriveSpawn = vector4(0.0, 0.0, 0.0, 293),
    camera = {
      name = "Car",
      coords = vector4(0.0, 0.0, 0.0, 270.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    enableFinance = false,
    hideBlip = true,
    blip = {
      id = 523,
      color = 8,
      scale = 0.7
    },
    hideMarkers = true,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["supporter"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-1271.64, -3400.03, 13.08),
      size = 5
    },
    openManagement = {
      coords = vector3(-1298.81, -3406.37, 13.08),
      size = 5
    },
    sellVehicle = {
      coords = vector3(0.0, 0.0, 0.0),
      size = 5
    },
    purchaseSpawn = vector4(-1262.76, -3376.55, 13.08, 327),
    testDriveSpawn = vector4(-1262.76, -3376.55, 13.08, 327),
    camera = {
      name = "Car",
      coords = vector4(-1262.76, -3376.55, 13.08, 327),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "cycles", "sports", "commercial", "industrial", "vans"},
    enableSellVehicle = false, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = true,
    enableFinance = false,
    hideBlip = false,
    blip = {
      id = 523,
      color = 46,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["boats"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-739.55, -1333.75, 1.6),
      size = 5
    },
    openManagement = {
      coords = vector3(-731.37, -1310.35, 5.0),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-714.42, -1340.01, -0.18),
      size = 5
    },
    purchaseSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    testDriveSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    camera = {
      name = "Sea",
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"boats"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 410,
      color = 2,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["air"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = {
      coords = vector3(-1623.0, -3151.56, 13.99),
      size = 5
    },
    openManagement = {
      coords = vector3(-1637.78, -3177.94, 13.99),
      size = 5
    },
    sellVehicle = {
      coords = vector3(-1654.9, -3147.58, 13.99),
      size = 5
    },
    purchaseSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    testDriveSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    camera = {
      name = "Air",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {12.0, 15.0, 20.0, 15.0}
    },
    categories = {"planes", "helicopters"},
    enableSellVehicle = true, -- Allow players to sell vehicles back to dealer
    sellVehiclePercent = 0.6,  -- 60% of current sale price
    enableTestDrive = false,
    hideBlip = false,
    blip = {
      id = 423,
      color = 2,
      scale = 0.7
    },
    hideMarkers = false,
    markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    showroomJobWhitelist = {},
    showroomGangWhitelist = {},
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
}

-- Commands
Config.MyFinanceCommand = "myfinance"
Config.DirectSaleCommand = "directsale"
Config.DealerAdminCommand = "dealeradmin"

-- Nerd options
Config.RemoveGeneratorsAroundDealership = 60.0
Config.AutoRunSQL = true
Config.ReturnToPreviousRoutingBucket = false
Config.HideWatermark = false
Config.Debug = false