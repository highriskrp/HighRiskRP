weaponNames = {}
weaponNames["WEAPON_AR15BLACK"] = "AR15 BLACK"
weaponNames["WEAPON_AR15BLUE"] = "AR15 BLUE"
weaponNames["WEAPON_AR15GREEN"] = "AR15 GREEN"
weaponNames["WEAPON_AR15PURPLE"] = "AR15 PURPLE"
weaponNames["WEAPON_AR15RED"] = "AR15 RED"
weaponNames["WEAPON_AR15WHITE"] = "AR15 WHITE"
weaponNames["WEAPON_AR15YELLOW"] = "AR15 YELLOW"
weaponNames["WEAPON_AR15ORANGE"] = "AR15 ORANGE"



Citizen.CreateThread(function()
	for k,v in pairs(weaponNames) do 
		AddTextEntry(k, v)
	end
end)
