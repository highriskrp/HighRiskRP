fx_version 'adamant'

game 'gta5'
lua54 "yes"

name 'WEAPON Pack'
author ''
version '2.2'

files {
	'**/weaponcomponents.meta',
    '**/weaponarchetypes.meta',
	'**/weaponanimations.meta',
	'**/pedpersonality.meta',
	'**/weapons.meta',
}

data_file 'WEAPONCOMPONENTSINFO_FILE' '**/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' '**/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' '**/weaponanimations.meta'
data_file 'PED_PERSONALITY_FILE' '**/pedpersonality.meta'
data_file 'WEAPONINFO_FILE' '**/weapons.meta'

client_script 'weaponNames.lua'

escrow_ignore {
	'Installation/**/*.lua',
  }