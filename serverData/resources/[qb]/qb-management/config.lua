-- Zones for Menus
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    police = {
        vector3(447.16, -974.31, 30.47),
    },
    ambulance = {
        vector3(311.21, -599.36, 43.29),
    },
    cardealer = {
        vector3(-32.94, -1114.64, 26.42),
    },
    mechanic = {
        vector3(-347.59, -133.35, 39.01),
    },
    beanmachine = {
        vector3(283.81, -977.68, 29.42),
    },
    luxury = {
        vector3(-203.39, -1170.76, 23.76),
    },
    tuner = {
        vector3(-1257.4, -369.15, 36.91),
    },
    exoticautos = {
        vector3(-866.75, -203.19, 37.84),
    },
    treysbakery = {
        vector3(62.77, -137.23, 55.93),
    },
    bennys = {
        vector3(-214.81, -1385.53, 35.29),
    },
    honda = {
        vector3(-481.74, -138.0, 43.41),
    },
    vagoscustoms = {
        vector3(452.36, -2002.09, 8.04),
    },
    autoexotics = {
        vector3(559.28, -197.81, 58.15),
    },
}

Config.GangMenus = {
    lostmc = {
        vector3(0, 0, 0),
    },
    ballas = {
        vector3(0, 0, 0),
    },
    vagos = {
        vector3(0, 0, 0),
    },
    cartel = {
        vector3(0, 0, 0),
    },
    families = {
        vector3(0, 0, 0),
    },
}
