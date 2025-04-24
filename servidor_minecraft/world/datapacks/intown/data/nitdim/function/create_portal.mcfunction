###Put the marker on the ground###
spreadplayers ~ ~ 0 1 false @s

###Cosmetics###
execute at @s run playsound minecraft:entity.player.levelup hostile @a[distance=..30] ~ ~ ~ 20
execute at @s run particle minecraft:poof ~ ~ ~ 7 7 7 0.2 2000 normal

###Build the portal###
execute at @s run place template nitdim:in_between/portals/standard ~-5 ~ ~-5
execute at @s run tag @e[tag=nitPortal,distance=..7] add nitLinkBetween

###Reset everything###
kill @s