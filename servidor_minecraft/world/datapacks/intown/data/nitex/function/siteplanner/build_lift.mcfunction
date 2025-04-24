###Checks if a site already exists below###
execute if entity @s[tag=nitSiteEast] unless block ~7 ~-29 ~ barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteWest] unless block ~-7 ~-29 ~ barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteNorth] unless block ~ ~-29 ~-7 barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteSouth] unless block ~ ~-29 ~7 barrier run tag @s add nitLargeSite

###Builds lift top site###
execute if entity @s[tag=nitLargeSite,tag=nitSiteEast] run place template nitex:mine/lift_top ~1 ~-3 ~-7

execute if entity @s[tag=nitLargeSite,tag=nitSiteWest] run place template nitex:mine/lift_top ~-15 ~-3 ~-7

execute if entity @s[tag=nitLargeSite,tag=nitSiteNorth] run place template nitex:mine/lift_top ~-7 ~-3 ~-15

execute if entity @s[tag=nitLargeSite,tag=nitSiteSouth] run place template nitex:mine/lift_top ~-7 ~-3 ~1

###Builds lift bottom site###
execute if entity @s[tag=nitLargeSite,tag=nitSiteEast] run place template nitex:mine/lift_bottom ~1 ~-30 ~-7

execute if entity @s[tag=nitLargeSite,tag=nitSiteWest] run place template nitex:mine/lift_bottom ~-15 ~-30 ~-7

execute if entity @s[tag=nitLargeSite,tag=nitSiteNorth] run place template nitex:mine/lift_bottom ~-7 ~-30 ~-15

execute if entity @s[tag=nitLargeSite,tag=nitSiteSouth] run place template nitex:mine/lift_bottom ~-7 ~-30 ~1

###Creates site planners###
tag @s add nitArtifactDiscovery
execute if entity @s[tag=nitLargeSite] run function nitex:siteplanner/new_sites_check
tag @s remove nitArtifactDiscovery
execute if entity @s[tag=nitLargeSite] positioned ~ ~-27 ~ run function nitex:siteplanner/new_sites_check
execute if entity @s[tag=nitLargeSite] run advancement grant @a[distance=..20] only nitex:nitex/complete_mine build-lift

###Empties and fills lift shaft###
execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] run fill ~6 ~ ~-2 ~10 ~2 ~2 repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-18 ~ chain[axis=y]"} replace sponge
execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] run fill ~7 ~-3 ~-2 ~9 ~-3 ~2 minecraft:repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ air"}

execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] run fill ~-6 ~ ~-2 ~-10 ~2 ~2 repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-18 ~ chain[axis=y]"} replace sponge
execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] run fill ~-7 ~-3 ~-2 ~-9 ~-3 ~2 minecraft:repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ air"}

execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] run fill ~-2 ~ ~-6 ~2 ~2 ~-10 repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-18 ~ chain[axis=y]"} replace sponge
execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] run fill ~-2 ~-3 ~-7 ~2 ~-3 ~-9 minecraft:repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ air"}

execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] run fill ~-2 ~ ~6 ~2 ~2 ~10 repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-18 ~ chain[axis=y]"} replace sponge
execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] run fill ~-2 ~-3 ~7 ~2 ~-3 ~9 minecraft:repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ air"}

###Performs Illager attacks###
execute if entity @s[tag=nitLargeSite] run function nitex:attacks_check

###Warns of not enough space###
execute if entity @s[tag=!nitLargeSite] run tellraw @a[distance=..20] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitk.large_site.warning","fallback":"Not enough room for structure at this site.","color":"white","bold":false}]