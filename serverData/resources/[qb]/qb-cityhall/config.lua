Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

--Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
 --   ['trucker'] = { ['label'] = 'Trucker', ['isManaged'] = false },
  --  ['tow'] = { ['label'] = 'Tow Truck', ['isManaged'] = false },
  --  ['reporter'] = { ['label'] = 'News Reporter', ['isManaged'] = false },
  --  ['hotdog'] = { ['label'] = 'Hot Dog Stand', ['isManaged'] = false }
--}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-551.57, -191.28, 38.22),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = 'City Services'
        },
        licenses = {
            ['id_card'] = {
                label = 'ID Card',
                cost = 50,
            },
            ['driver_license'] = {
                label = 'Driver License',
                cost = 50,
                metadata = 'driver'
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(0.0, 0.0, -100.0),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = 'Driving School'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140',
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'S_M_M_HighSec_02',
        coords = vec4(-551.56, -191.31, 37.22, 209.94),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(0.0, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = false,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    },
}
