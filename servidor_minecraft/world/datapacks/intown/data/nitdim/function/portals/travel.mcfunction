###Denotes that the player is travelling###
gamerule spectatorsGenerateChunks true
tag @s add nitPortalTravel
tag @s[predicate=nitdim:in_overworld] add nitFromOverworld
tag @s[predicate=nitdim:in_buried_ocean] add nitFromBuriedOcean
tag @s[predicate=nitdim:in_primordial_desert] add nitFromPrimordialDesert
tag @s[predicate=nitdim:in_tempest] add nitFromTempest

###Teleports the player to the linked dimension###
execute if entity @e[tag=nitPortal,tag=nitLinkOverworld,distance=..4] in minecraft:overworld run tp ~ 71 ~
execute if entity @e[tag=nitPortal,tag=nitLinkBetween,distance=..4] in nitdim:in_between run tp ~ 55 ~
execute if entity @e[tag=nitPortal,tag=nitLinkBuriedOcean,distance=..4] in nitdim:buried_ocean run tp ~ 50 ~
execute if entity @e[tag=nitPortal,tag=nitLinkPrimordialDesert,distance=..4] in nitdim:primordial_desert run tp ~ 78 ~
execute if entity @e[tag=nitPortal,tag=nitLinkTempest,distance=..4] in nitdim:tempest run tp ~ 63 ~

###Gives requisite effects and performs cosmetics###
gamemode spectator @s
effect give @s minecraft:slowness infinite 10 true
effect give @s minecraft:nausea 5 1 true
effect give @s minecraft:blindness infinite 1 true
playsound block.portal.trigger block @s ~ ~ ~ 3 1.3

###Prepares to look for an existing portal, or creates one###
tag @s add nitPortalSeeking