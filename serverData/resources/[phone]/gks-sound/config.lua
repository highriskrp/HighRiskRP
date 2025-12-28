Config = {}
Config.Debug = false  -- Enable/disable debug messages

-- Command to turn players music sounds on and off
Config.MuteCommand = "musicmute"

-- Command to adjust personal music volume (0-100)
Config.VolumeCommand = "musicvolume"

-- Default personal volume multiplier (0.0 - 1.0)
Config.DefaultPersonalVolume = 0.5

-- 3D Audio Settings
Config.Audio3D = {
    MaxDistance = 16.0,           -- Maximum distance where audio can be heard
    StopDistance = 300.0,         -- Distance where music stops completely (optimization)
    UpdateRate = 150,             -- Position update rate in milliseconds (lower = smoother but more intensive)

    -- Occlusion Settings (Wall detection)
    Occlusion = {
        Enabled = true,           -- Enable/disable occlusion system
        CheckInterval = 500,      -- How often to check for occlusion in ms (higher = better performance)
        FilterFrequency = 800,    -- Lowpass filter frequency when occluded (Hz)
        VolumeReduction = 0.5,    -- Volume multiplier when occluded (0.0 - 1.0)
        MinDistance = 3.0,        -- Minimum distance to check occlusion (closer = no check)
        Debug = false              -- Show debug messages in console
    },

    -- Vehicle Filter Settings
    Vehicle = {
        Enabled = true,           -- Enable/disable vehicle interior filtering
        CheckInterval = 300,      -- How often to check vehicle state in ms

        -- Filter when listener is inside vehicle, sound source is outside
        InsideVehicle = {
            FilterFrequency = 600,    -- Lowpass filter frequency (Hz)
            VolumeReduction = 0.6,    -- Volume multiplier (0.0 - 1.0)
        },

        -- Filter when sound source is inside vehicle, listener is outside
        SourceInVehicle = {
            FilterFrequency = 700,    -- Lowpass filter frequency (Hz)
            VolumeReduction = 0.7,    -- Volume multiplier (0.0 - 1.0)
        },

        -- Window open multiplier (applies to filters when ANY window is open)
        WindowOpen = {
            FilterMultiplier = 2.0,   -- Multiply filter frequency (higher = clearer sound)
            VolumeMultiplier = 1.3,   -- Multiply volume (higher = louder)
        },

        Debug = false              -- Show debug messages in console
    },

    -- YouTube Audio Settings
    YouTube = {
        refDistance = 5.0,        -- Distance where volume is at 100%
        maxDistance = 16.0,       -- Distance where volume reaches 0%
        rolloffFactor = 1.5       -- How quickly volume decreases with distance
    },

    -- MP3/Audio File Settings
    Audio = {
        refDistance = 3.0,        -- Distance where volume is at 100%
        maxDistance = 16.0,       -- Distance where volume reaches 0%
        rolloffFactor = 2.0       -- How quickly volume decreases with distance
    }
}

