fx_version 'cerulean'
game "gta5"
lua54 'yes'
description 'GKSPHONE - Advanced Phone System'
version '2.1.1'

ui_page 'html/index.html'

shared_scripts {
    "config/config.lua",
	"config/functions.lua",
	"config/rentacar/sh_config.lua",
    "config/jobs/*.lua",
    "config/signal/*.lua",
    "config/charge/*.lua",
}

files {
    "html/**",
    "config/config.json",
    "config/locales/*.json"
}

client_scripts {
    "callbacks.lua",
    "config/camera/*.lua",
	"client/**/*",
    "escrow/client/**/*",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "callbacks.lua",
    "config/serverconfig.lua",
	"config/rentacar/sv_config.lua",
    "server/**/*",
    "escrow/server/**/*",
}

-- Client Exports --
client_exports {
    'Notification',
	'SendNewMail',
    'SendNewMailOffline'
}

--- Server Exports ---
server_exports {
    'SendNewMail',
    'SendNewMailOffline',
    'sendNotification'
}


dependencies {
    "oxmysql"
}

escrow_ignore {
    "callbacks.lua",
    "config/*",
	"config/**/*",
    "server/**/*",
    "client/**/*"
}
dependency '/assetpacks'