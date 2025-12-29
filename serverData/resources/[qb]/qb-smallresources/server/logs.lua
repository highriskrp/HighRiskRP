local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1454994511494254725/-UTC0d7-czhS72SKNyY-vCAoa8i0IaUh-VIi8Ctly4NoqKWVpmvn4jgZvPkPz7l1C7QL',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1454994511494254725/-UTC0d7-czhS72SKNyY-vCAoa8i0IaUh-VIi8Ctly4NoqKWVpmvn4jgZvPkPz7l1C7QL',
    ['playermoney'] = 'https://discord.com/api/webhooks/1454993865621635178/eJsid1XdxxROIgojteCTqbHQ_VkmsqRTgYx0X8z52_huw7wa8-0qLQL6_2rbHKypPk5t',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1454993956784967773/FyLRJATdKcZdOw0pHJmSlaqwyIgVl_96xtwnopJSVJYl00R4HMpz1tLzDWMwEGPgZdIT',
    ['robbing'] = '',
    ['cuffing'] = '',
    ['drop'] = 'https://discord.com/api/webhooks/1454993956784967773/FyLRJATdKcZdOw0pHJmSlaqwyIgVl_96xtwnopJSVJYl00R4HMpz1tLzDWMwEGPgZdIT',
    ['trunk'] = 'https://discord.com/api/webhooks/1454993956784967773/FyLRJATdKcZdOw0pHJmSlaqwyIgVl_96xtwnopJSVJYl00R4HMpz1tLzDWMwEGPgZdIT',
    ['stash'] = 'https://discord.com/api/webhooks/1454993956784967773/FyLRJATdKcZdOw0pHJmSlaqwyIgVl_96xtwnopJSVJYl00R4HMpz1tLzDWMwEGPgZdIT',
    ['glovebox'] = 'https://discord.com/api/webhooks/1454993956784967773/FyLRJATdKcZdOw0pHJmSlaqwyIgVl_96xtwnopJSVJYl00R4HMpz1tLzDWMwEGPgZdIT',
    ['banking'] = 'https://discord.com/api/webhooks/1454993865621635178/eJsid1XdxxROIgojteCTqbHQ_VkmsqRTgYx0X8z52_huw7wa8-0qLQL6_2rbHKypPk5t',
    ['vehicleshop'] = '',
    ['vehicleupgrades'] = '',
    ['shops'] = 'https://discord.com/api/webhooks/1454993865621635178/eJsid1XdxxROIgojteCTqbHQ_VkmsqRTgYx0X8z52_huw7wa8-0qLQL6_2rbHKypPk5t',
    ['dealers'] = '',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1454994172623720509/Yck-kOjb6VsOGyEQbbp_vU_xjheS-zh1YGGh4KaQABhTW0UBGOuNO7iAUYWMFbgBT8Ch',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1454994172623720509/Yck-kOjb6VsOGyEQbbp_vU_xjheS-zh1YGGh4KaQABhTW0UBGOuNO7iAUYWMFbgBT8Ch',
    ['powerplants'] = 'https://discord.com/api/webhooks/1454994172623720509/Yck-kOjb6VsOGyEQbbp_vU_xjheS-zh1YGGh4KaQABhTW0UBGOuNO7iAUYWMFbgBT8Ch',
    ['death'] = 'https://discord.com/api/webhooks/1454994442691022880/0Grl4BqhKIiiSvX1UElGe2BwCvC2SowVkj7If323XeQ7D9PhnhCDAI2KHRcHOwChqys8',
    ['joinleave'] = 'https://discord.com/api/webhooks/1454994511494254725/-UTC0d7-czhS72SKNyY-vCAoa8i0IaUh-VIi8Ctly4NoqKWVpmvn4jgZvPkPz7l1C7QL',
    ['ooc'] = '',
    ['report'] = '',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = 'https://discord.com/api/webhooks/1454994511494254725/-UTC0d7-czhS72SKNyY-vCAoa8i0IaUh-VIi8Ctly4NoqKWVpmvn4jgZvPkPz7l1C7QL',
    ['anticheat'] = 'https://discord.com/api/webhooks/1454994511494254725/-UTC0d7-czhS72SKNyY-vCAoa8i0IaUh-VIi8Ctly4NoqKWVpmvn4jgZvPkPz7l1C7QL',
    ['weather'] = '',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1454994172623720509/Yck-kOjb6VsOGyEQbbp_vU_xjheS-zh1YGGh4KaQABhTW0UBGOuNO7iAUYWMFbgBT8Ch',
    ['bennys'] = '',
    ['bossmenu'] = '',
    ['robbery'] = 'https://discord.com/api/webhooks/1454994172623720509/Yck-kOjb6VsOGyEQbbp_vU_xjheS-zh1YGGh4KaQABhTW0UBGOuNO7iAUYWMFbgBT8Ch',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = '',
    ['qbjobs'] = '',
    ['adminactions'] = 'https://discord.com/api/webhooks/1454994332451868849/c6uYIZrfKjeVsX10RCwSid-ydz4yPwXqoaIzG8obhWERDEbiPIO6hpQIZSiKGzqrJWWf',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone, imageUrl)
    local postData = {}
    local tag = tagEveryone or false

    if Config.Logging == 'discord' then
        if not Webhooks[name] then
            print('Tried to call a log that isn\'t configured with the name of ' .. name)
            return
        end
        local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
        local embedData = {
            {
                ['title'] = title,
                ['color'] = colors[color] or colors['default'],
                ['footer'] = {
                    ['text'] = os.date('%c'),
                },
                ['description'] = message,
                ['author'] = {
                    ['name'] = 'QBCore Logs',
                    ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
                },
                ['image'] = imageUrl and imageUrl ~= '' and { ['url'] = imageUrl } or nil,
            }
        }

        if not logQueue[name] then logQueue[name] = {} end
        logQueue[name][#logQueue[name] + 1] = { webhook = webHook, data = embedData }

        if #logQueue[name] >= 10 then
            if tag then
                postData = { username = 'QB Logs', content = '@everyone', embeds = {} }
            else
                postData = { username = 'QB Logs', embeds = {} }
            end
            for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
            PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
            logQueue[name] = {}
        end
    elseif Config.Logging == 'fivemanage' then
        local FiveManageAPIKey = GetConvar('FIVEMANAGE_LOGS_API_KEY', 'false')
        if FiveManageAPIKey == 'false' then
            print('You need to set the FiveManage API key in your server.cfg')
            return
        end
        local extraData = {
            level = tagEveryone and 'warn' or 'info', -- info, warn, error or debug
            message = title,                          -- any string
            metadata = {                              -- a table or object with any properties you want
                description = message,
                playerId = source,
                playerLicense = GetPlayerIdentifierByType(source, 'license'),
                playerDiscord = GetPlayerIdentifierByType(source, 'discord')
            },
            resource = GetInvokingResource(),
        }
        PerformHttpRequest('https://api.fivemanage.com/api/logs', function(statusCode, response, headers)
            -- Uncomment the following line to enable debugging
            -- print(statusCode, response, json.encode(headers))
        end, 'POST', json.encode(extraData), {
            ['Authorization'] = FiveManageAPIKey,
            ['Content-Type'] = 'application/json',
        })
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = { username = 'QB Logs', embeds = {} }
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
