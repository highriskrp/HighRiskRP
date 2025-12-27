Config = {}
Config.targetScript = "qb-target" -- qb-target or ox_target
Config.Framework = "qb" -- qb or esx

Config.Ped = 'csb_cletus'
Config.PedCoords = vector4(302.84, 2821.15, 43.44, 11.79)

Config.MoneyType = "cash" -- cash or bank


--[[ Do not forget to export the name of your server Dispatch script here. ]]
--[[ Config.PoliceAlert = function() -- Client Side
    exports['ps-dispatch']:SignRobbery()
end ]]



--[[ You can put any minigame script you want here. ]]
Config.MiniGame = function()
    local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 0.5}, 'easy'}, {'1', '2'}) -- ox_lib
    return true -- or return success
end


--[[ Please specify here how many objects you would like to see in the trunk of each car. ]]
Config.Vehicles = {  
    ["0"] = 2,  -- Compacts
    ["1"] = 2,  -- Sedans
    ["2"] = 2,  -- SUVs
    ["3"] = 2,  -- Coupes
    ["4"] = 2,  -- Muscle
    ["5"] = 2,  -- Sport Classic
    ["6"] = 2,  -- Sport
    ["7"] = 2,  -- Super
    ["8"] = 2,  -- Motorcycle
    ["9"] = 2,  -- Offroad
    ["10"] = 2, -- Industrial
    ["11"] = 2, -- Utility
    ["12"] = 2, -- Vans
    ["13"] = 0, -- Bicycles
    ["14"] = 0, -- Boats
    ["15"] = 0, -- Helicopters
    ["16"] = 2, -- Planes
    ["17"] = 2, -- Service
    ["18"] = 2, -- Emergency
    ["19"] = 2, -- Military
}



--[[ https://forge.plebmasters.de/   You can access all the objects in GTA 5 from this site and add the object you want]]
Config.globalObjects = { 
    ['prop_postbox_01a'] = 100, --  ['popname'] = money
    ['prop_news_disp_02a'] = 200,
    ['prop_news_disp_02c'] = 200,
    ['prop_parkmeter_01'] = 200,
    ['prop_news_disp_05a'] = 200,
    ['prop_news_disp_06a'] = 200,
    ['prop_bollard_02a'] = 200,
    ['prop_parknmeter_01'] = 200,
    ['prop_elecbox_05a'] = 200,
    ['prop_bin_01a'] = 200,
    ['prop_fire_hydrant_2'] = 200,
    ['prop_elecbox_04a'] = 200,
    ['prop_rub_binbag_03b'] = 200,
    ['prop_rub_binbag_05'] = 200,
    ['prop_sign_road_03e'] = 200,
    ['prop_streetlight_01b'] = 200,
    ['prop_elecbox_08'] = 200,
    ['prop_traffic_03a'] = 200,
    ['prop_bench_01a'] = 200,
    ['prop_vend_coffe_01'] = 200,
    ['v_liev_fib_door1'] = 200,
    ['prop_table_03_chr'] = 200,
    ['prop_parasol_04c'] = 200,
    ['prop_table_03'] = 200,
    ['prop_telescope_01'] = 200,
    ['prop_life_ring_01'] = 200,
    ['prop_ball_box'] = 200,
    ['prop_boogbd_stack_02'] = 200,
    ['prop_postcard_rack'] = 200,
    ['prop_plant_int_02b'] = 200,
    ['prop_venice_sign_02'] = 200,
    ['prop_atm_03'] = 200,
    ['prop_sign_road_06g'] = 200,
}

Config.Locales = {
    ["take_obj"] = "Take Object",
    ["sell_obj"] = "Sell Object",
    ["take_takeObjFromVeh"] = "[E] Take Object From Trunk",
    ["take_placeObjToTrunk"] = "[E] Place Object To Trunk",
    ["trunk_is_full"] = "Trunk is full",
}