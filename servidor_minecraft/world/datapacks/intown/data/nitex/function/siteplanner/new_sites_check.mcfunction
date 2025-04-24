###Creates new siteplanners for unoccupied sites adjacent to site newly constructed to the east###
execute if entity @s[tag=nitSiteEast] if block ~23 ~-2 ~ minecraft:barrier run tag @s add nitSiteExistsEast
execute if entity @s[tag=nitSiteEast] if block ~8 ~-2 ~-15 minecraft:barrier run tag @s add nitSiteExistsNorth
execute if entity @s[tag=nitSiteEast] if block ~8 ~-2 ~15 minecraft:barrier run tag @s add nitSiteExistsSouth
execute if entity @s[tag=nitSiteEast] run function nitex:siteplanner/new_sites_tech/newsite_e

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed to the west###
execute if entity @s[tag=nitSiteWest] if block ~-23 ~-2 ~ minecraft:barrier run tag @s add nitSiteExistsWest
execute if entity @s[tag=nitSiteWest] if block ~-8 ~-2 ~-15 minecraft:barrier run tag @s add nitSiteExistsNorth
execute if entity @s[tag=nitSiteWest] if block ~-8 ~-2 ~15 minecraft:barrier run tag @s add nitSiteExistsSouth
execute if entity @s[tag=nitSiteWest] run function nitex:siteplanner/new_sites_tech/newsite_w

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed to the north###
execute if entity @s[tag=nitSiteNorth] if block ~ ~-2 ~-23 minecraft:barrier run tag @s add nitSiteExistsNorth
execute if entity @s[tag=nitSiteNorth] if block ~15 ~-2 ~-8 minecraft:barrier run tag @s add nitSiteExistsEast
execute if entity @s[tag=nitSiteNorth] if block ~-15 ~-2 ~-8 minecraft:barrier run tag @s add nitSiteExistsWest
execute if entity @s[tag=nitSiteNorth] run function nitex:siteplanner/new_sites_tech/newsite_n

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed to the south###
execute if entity @s[tag=nitSiteSouth] if block ~ ~-2 ~23 minecraft:barrier run tag @s add nitSiteExistsSouth
execute if entity @s[tag=nitSiteSouth] if block ~15 ~-2 ~8 minecraft:barrier run tag @s add nitSiteExistsEast
execute if entity @s[tag=nitSiteSouth] if block ~-15 ~-2 ~8 minecraft:barrier run tag @s add nitSiteExistsWest
execute if entity @s[tag=nitSiteSouth] run function nitex:siteplanner/new_sites_tech/newsite_s

###Performs artifact discovery###
execute if entity @s[tag=nitArtifactDiscovery] run scoreboard players add @e[tag=nitEMF,limit=1,sort=nearest] nitShaftCraft 1
execute if entity @s[tag=nitArtifactDiscovery] if entity @e[tag=nitEMF,limit=1,sort=nearest,scores={nitShaftCraft=1..3}] run tag @s add nitArtifactAvailable
execute if entity @s[tag=nitSiteEast,tag=!nitSiteExistsEast,tag=nitArtifactAvailable] run function nitex:artifact/gen_artifact_e
execute if entity @s[tag=nitSiteWest,tag=!nitSiteExistsWest,tag=nitArtifactAvailable] run function nitex:artifact/gen_artifact_w
execute if entity @s[tag=nitSiteNorth,tag=!nitSiteExistsNorth,tag=nitArtifactAvailable] run function nitex:artifact/gen_artifact_n
execute if entity @s[tag=nitSiteSouth,tag=!nitSiteExistsSouth,tag=nitArtifactAvailable] run function nitex:artifact/gen_artifact_s

###Removes existing site tags for re-evaluation###
tag @s remove nitSiteExistsEast
tag @s remove nitSiteExistsWest
tag @s remove nitSiteExistsNorth
tag @s remove nitSiteExistsSouth
tag @s remove nitArtifactAvailable

###Cleanup###
tag @a add nitExcavator
tag @e[type=minecraft:villager,distance=..20] add nitExcavator
tag @s add nitKilled
execute if entity @s[tag=nitSiteEast] run particle poof ~7 ~2 ~ 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteWest] run particle poof ~-7 ~2 ~ 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteNorth] run particle poof ~ ~2 ~-7 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteSouth] run particle poof ~ ~2 ~7 3 2 3 0.3 200 force
playsound minecraft:block.anvil.use block @a ~ ~ ~ 2 0.7
playsound minecraft:block.nether_ore.hit block @a ~ ~ ~ 2 0.5
playsound item.trident.thunder block @a ~ ~ ~ 2 0.7
playsound minecraft:block.chest.open block @a ~ ~ ~ 2 0.7