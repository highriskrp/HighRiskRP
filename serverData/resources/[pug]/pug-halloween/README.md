# Pug Halloween. For any questions please contact me here: here https://discord.gg/jYZuWYjfvq
For any of my other scripts you can purchase here: https://pug-scripts.tebex.io/category/2141020

# Installation
- Drag and drop.
--

### Step 1: Add this helper at the top of ox_inventory/client.lua
```lua
function DoNotSkip()
    local inPaintball = GetResourceState("pug-paintball") == "started"
        and exports["pug-paintball"]:IsInPaintball()
    local inBattleRoyale = GetResourceState("pug-battleroyale") == "started"
        and exports["pug-battleroyale"]:IsInBattleRoyale()
    local halloweenEvent = GetResourceState("pug-halloween") == "started"
        and exports["pug-halloween"]:HasHalloweenEventStarted()
    return not inPaintball and not inBattleRoyale and not halloweenEvent
end
```

### Step 2: – Disable Weapon Handling in `ox_inventory/client.lua` by editing this code. To quickly find the code to edit, open the client and then hit CTRL+F and then search up
```lua
if weaponType ~= 0 and weaponType ~= `GROUP_UNARMED` then
```
Replace with:
```lua
if weaponType ~= 0 and weaponType ~= `GROUP_UNARMED` and DoNotSkip() then
```

### Step 3: – Prevent Firing Lockout in `ox_inventory/client.lua` by editing this code. To quickly find the code to edit, open the client and then hit CTRL+F and then search up
Search for:
```lua
if usingItem or invBusy == true or IsPedCuffed(playerPed) then 
```
# OR
```lua
if usingItem or invOpen or IsPedCuffed(playerPed) then 
```
Replace with:
```lua
if usingItem or invBusy or invOpen or IsPedCuffed(playerPed) then
    if DoNotSkip() then
        DisablePlayerFiring(playerId, true)
    end
end
```

PUG-HALLOWEEN: For any questions please contact me here:  https://discord.com/invite/jYZuWYjfvq

PREVIEW HERE: https://youtu.be/eQ_7d5l4oQc

Full QBCore & ESX Compatibility. (supports custom qb-core names)

This completely configurable script consist of:
● Hordes of zombies that attack the players.
● Ability to trick or treat at 240+ pre configured houses.
● All zombies are networked and synced across all players.
● Custom scoreboard tracking every players kills.
● Live updated time ui indicating length of the event.
● Custom sounds, camera work and animations.
● First, Second, and third place winners with prizes. (Configurable)
● Different level of difficulties that change randomly. (Configurable)
● + 2-5 ammo to the player whenever a zombie is killed. (Configurable)
● +1 HP whenever a zombie is killed. (Configurable)
● Multiple zombies ped models. (Configurable)
● Very in depth and easy to Configurable resource.
● 98% drag and drop resource.

Requirements/Dependencies consist of:
QBCore, QBox, or ESX.
