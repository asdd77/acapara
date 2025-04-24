###Confirm portal validity###
execute if entity @e[tag=nitPortal,distance=..3] run tag @s[tag=!nitPortalTravel,gamemode=survival] add nitPortalConfirm

###Perform travel function###
execute if entity @s[tag=!nitPortalTravel,tag=nitPortalConfirm] run function nitdim:portals/travel


advancement revoke @s[tag=!nitPortalTravel] only nitdim:tech/to_between