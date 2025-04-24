###Puts the player on the ground in dimensions that have no ceiling, or to sea level###
execute if entity @s[tag=nitPortalTravel,predicate=nitdim:in_overworld] run spreadplayers ~ ~ 1 2 false @s
execute if entity @s[tag=nitPortalTravel,predicate=nitdim:in_between] run spreadplayers ~ ~ 1 2 false @s
execute if entity @s[tag=nitPortalTravel,predicate=nitdim:in_buried_ocean] run tp ~ 49 ~
execute if entity @s[tag=nitPortalTravel,predicate=nitdim:in_primordial_desert] run spreadplayers ~ ~ 1 2 false @s
execute if entity @s[tag=nitPortalTravel,predicate=nitdim:in_tempest] run spreadplayers ~ ~ 1 2 false @s

###Builds the portal###
execute if entity @s[tag=nitPortalTravel] at @s run place template nitdim:in_between/portals/standard ~-2 ~-1 ~-5
execute if entity @s[tag=nitPortalTravel] at @s run tp ~ ~1 ~