lua54 'yes'
fx_version 'cerulean'
game 'gta5'

author 'Pug Development'
description 'Free Halloween Script'
version '1.0.1'

shared_scripts {
    'config.lua'
}
server_scripts {    
    'server/server.lua',
    'server/secret.lua',
}
client_scripts { 
    'client/client.lua',
    'client/secret.lua',
}

escrow_ignore {
    'config.lua',
    'client/client.lua',
    'server/server.lua',
    'peds.meta',
}

ui_page 'html/index.html'

files {
    'peds.meta',
    'html/*.html',
    'html/sounds/*',
}
    
data_file 'PED_METADATA_FILE' 'peds.meta'
dependency '/assetpacks'