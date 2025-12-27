fx_version "adamant"
game "gta5"
lua54 'yes'

client_script "client/client.lua"

server_script "server/server.lua"
shared_script "config.lua"
shared_script '@ox_lib/init.lua'

escrow_ignore {
    "config.lua",
    "client/client.lua",
    "server/server.lua",
}
dependency '/assetpacks'