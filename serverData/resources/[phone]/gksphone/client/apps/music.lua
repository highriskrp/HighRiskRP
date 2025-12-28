--- GKSPHONE MUSIC APP ---
-- Made by GKSHOP  | https://discord.gg/XUck63E
-- Version: 2.1.1
MusicData = {}
local volume = 0.2
StreamMode = false

RegisterNUICallback('gksphone:musicListen', function(data, cb)
    Debugprint("Listening to music", data)
    if data.type == "music" then
        TriggerServerEvent('gksphone:server:musicListen', data.musicid, volume, "play", data.time)
    elseif data.type == "call" then
        TriggerServerEvent('gksphone:server:musicListen', data.musicid, data.volume, data.type)
    end
    cb('ok')
end)

RegisterNUICallback('gksphone:client:playMusic', function(data, cb)
    Debugprint("Playing music", data)
    local check = 'ok'
    if data.action == "volume" then
        volume = data.volume
    end
    local soundId = tostring(CurrentPlayerId)
    local id = "music" .. soundId
    if data.action == "stopcall" then
        TriggerServerEvent('gksphone:server:musicListen', false, false, data.action, false)
    elseif MusicData[id] then
        if data.action == "stop" and exports["gks-sound"]:soundExists(soundId) then
            local getTime = exports["gks-sound"]:getTimeStamp(soundId)
            check = {time = getTime}
        end
        if data.action == "volume" then
            Debugprint("Setting volume to", data.volume)
            TriggerServerEvent('gksphone:server:musicListen', false, data.volume, data.action, false)
        elseif data.action == "seek" then
            Debugprint("Seeking to", data.seekTime)
            TriggerServerEvent('gksphone:server:musicListen', false, false, data.action, data.seekTime)
        else
            Debugprint("Performing action", data.action, data.musicid or false)
            TriggerServerEvent('gksphone:server:musicListen', data.musicid or false, false, data.action, false)
        end
    elseif not MusicData[id] and data.action == "musicNext" then
        TriggerServerEvent('gksphone:server:musicListen', data.musicid or false, volume, "musicNext", 0)
    end
    cb(check)
end)

RegisterNetEvent("gksphone:client:musicListen", function (action)
    local soundId = tostring(CurrentPlayerId)
    local id = "music" .. soundId
    if MusicData[id] then return end
    exports["gks-sound"]:onPlayStart(soundId, function(event)
        Debugprint("Music started", event)
        MusicData[id] = {sid = soundId}
        CreateThread(function()
            while true do
                if not MusicData[id] then
                    break
                end
                local duration = exports["gks-sound"]:getMaxDuration(soundId)
                local currentTime = exports["gks-sound"]:getTimeStamp(soundId)
                local progress = (currentTime / duration) * 100
                if type(progress) == "number" and progress ~= progress then
                    progress = 0
                end
                SendNUIMessage({
                    action = 'updateProgress',
                    progress = progress,
                    currentTime = currentTime,
                })
                Wait(200)
            end
        end)
    end)
    exports['gks-sound']:onPlayEnd(soundId, function(event)
        Debugprint("Music ended", event)
        SendNUIMessage({
            action = 'updatePlay',
            isPlay = false,
            isEnd = true
        })
    end)
    exports['gks-sound']:onPlayPause(soundId, function(event)
        Debugprint("Music paused", event)
        SendNUIMessage({
            action = 'updatePlay',
            isPlay = false
        })
    end)
    exports['gks-sound']:onPlayResume(soundId, function(event)
        Debugprint("Music resumed", event)
        SendNUIMessage({
            action = 'updatePlay',
            isPlay = true
        })
    end)
    exports['gks-sound']:onPlayDestroy(soundId, function(event)
        Debugprint("Music destroy", event)
        MusicData[id] = nil
        TriggerServerEvent("gksphone:server:musicDestroy", soundId)
    end)
end)