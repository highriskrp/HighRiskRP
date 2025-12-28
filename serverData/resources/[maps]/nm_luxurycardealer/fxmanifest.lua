fx_version('cerulean')
game('gta5')

author 'NekMods -- James'
description 'Luxury Car Dealer - nm_luxurycardealer"'
version '1.0.0'
lua54 'yes'

client_scripts {
	'client.lua'
}

escrow_ignore {
  'fxmanifest.lua', 
  'stream/vanilla/*.*',
  'stream/ydr/nm_estate_r01_proxy.ydr',
  'stream/ydr/nm_estate_r02_proxy.ydr',
  'stream/ydr/nm_estate_r03_proxy.ydr',
  'stream/nm_estate_txd.ytd'
}

dependency '/assetpacks'