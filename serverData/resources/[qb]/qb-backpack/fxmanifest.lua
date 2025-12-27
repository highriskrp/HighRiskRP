fx_version 'cerulean'
games {'gta5'}
author 'Klein Vicente'
description 'QBCore KL Backpack'
version '1.0.0'
lua54 'yes'

 
shared_script "config.lua"
client_script "client/main.lua"
server_script "server/main.lua"

escrow_ignore {
	'config.lua',
}


dependency '/assetpacks'