Config = {}

Config.DefaultVolume = 0.1 -- Accepted values are 0.01 - 1

Config.Locations = {
    ['vanilla'] = {
        ['job'] = 'vanilla', -- Required job to use booth
        ['radius'] = 30, -- The radius of the sound from the booth
        ['coords'] = vector3(119.50, -1300.01, 29.22), -- Where the booth is located
        ['playing'] = false
    },
    ['uwu'] = {
        ['job'] = 'uwu', -- Required job to use booth
        ['radius'] = 60, -- The radius of the sound from the booth
        ['coords'] = vector3(683.66, 569.28, 130.46), -- Where the booth is located
        ['playing'] = false
    }
}
