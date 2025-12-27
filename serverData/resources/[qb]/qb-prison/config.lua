Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Jobs = {
    ['electrician'] = 'Electrician'
}

Config.Uniforms = {
    ['male'] = {
        outfitData = {
            ['t-shirt'] = { item = 15, texture = 0 },
            ['torso2'] = { item = 345, texture = 0 },
            ['arms'] = { item = 19, texture = 0 },
            ['pants'] = { item = 3, texture = 7 },
            ['shoes'] = { item = 1, texture = 0 },
        }
    },
    ['female'] = {
        outfitData = {
            ['t-shirt'] = { item = 14, texture = 0 },
            ['torso2'] = { item = 370, texture = 0 },
            ['arms'] = { item = 0, texture = 0 },
            ['pants'] = { item = 0, texture = 12 },
            ['shoes'] = { item = 1, texture = 0 },
        }
    },
}

Config.Locations = {
    freedom = vector4(1840.53, 2577.67, 45.01, 356.12),
    outside = vector4(1848.13, 2586.05, 44.67, 269.5),
    yard = vector4(1711.41, 2513.58, 45.55, 108.57),
    middle = vector4(1693.33, 2569.51, 44.55, 123.5),
    spawns = {
        { coords = vector4(1745.38, 2518.55, 45.55, 26.73) }
    },
    jobs = {
        electrician = {
            { coords = vector4(1723.74, 2506.4, 45.55, 212.25) },
            { coords = vector4(1718.65, 2488.63, 45.55, 172.92) },
            { coords = vector4(1667.94, 2488.64, 45.55, 176.87) },
            { coords = vector4(1657.43, 2489.26, 45.55, 135.67) },
            { coords = vector4(1618.96, 2521.53, 45.55, 121.67) },
            { coords = vector4(1617.31, 2527.98, 45.55, 65.57) },
            { coords = vector4(1630.41, 2527.12, 45.55, 222.01) }
        }
    }
}
