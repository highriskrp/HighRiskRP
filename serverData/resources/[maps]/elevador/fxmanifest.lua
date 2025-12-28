fx_version 'adamant'
game 'gta5'

ui_page 'nui/main.html'

lua54 'yes'

client_scripts {

	"config.lua",
	"client.lua"
}

server_scripts {

	"config.lua",
	"server.lua"
}

files {
	'nui/*.html',
	'nui/*.js',
	'nui/*.css',
}


escrow_ignore {
	"config.lua",
	'client.lua',
	'server.lua',
}
dependency '/assetpacks'