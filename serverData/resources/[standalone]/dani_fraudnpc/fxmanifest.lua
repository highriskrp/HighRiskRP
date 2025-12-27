fx_version 'cerulean'
game 'gta5'

description 'Fraud NPC - Sell forged checks, stolen debit & credit cards'
author 'DaniDiamondz'
version '1.0.0'

shared_script '@qb-core/shared.lua'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}
