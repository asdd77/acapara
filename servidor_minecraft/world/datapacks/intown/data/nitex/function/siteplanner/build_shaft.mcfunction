execute if entity @s[tag=nitSiteEast] unless block ~23 ~-3 ~ barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteWest] unless block ~-23 ~-3 ~ barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteNorth] unless block ~ ~-3 ~-23 barrier run tag @s add nitLargeSite
execute if entity @s[tag=nitSiteSouth] unless block ~ ~-3 ~23 barrier run tag @s add nitLargeSite

execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] run place template nitex:mine/shaft ~1 ~-3 ~-3 none

execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] run place template nitex:mine/shaft ~-1 ~-3 ~3 180

execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] run place template nitex:mine/shaft ~-3 ~-3 ~-1 counterclockwise_90

execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] run place template nitex:mine/shaft ~3 ~-3 ~1 clockwise_90

###Altered site planner placement for unidirection###
execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] run tag @s add nitSiteExistsNorth
execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] run tag @s add nitSiteExistsSouth
execute if entity @s[tag=nitSiteEast,tag=nitLargeSite] positioned ~15 ~ ~ run function nitex:siteplanner/new_sites_check
execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] run tag @s add nitSiteExistsNorth
execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] run tag @s add nitSiteExistsSouth
execute if entity @s[tag=nitSiteWest,tag=nitLargeSite] positioned ~-15 ~ ~ run function nitex:siteplanner/new_sites_check
execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] run tag @s add nitSiteExistsEast
execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] run tag @s add nitSiteExistsWest
execute if entity @s[tag=nitSiteNorth,tag=nitLargeSite] positioned ~ ~ ~-15 run function nitex:siteplanner/new_sites_check
execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] run tag @s add nitSiteExistsEast
execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] run tag @s add nitSiteExistsWest
execute if entity @s[tag=nitSiteSouth,tag=nitLargeSite] positioned ~ ~ ~15 run function nitex:siteplanner/new_sites_check
execute if entity @s[tag=nitLargeSite] run tag @s add nitKilled

###Warns of not enough space###
execute if entity @s[tag=!nitLargeSite] run tellraw @a[distance=..20] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitk.large_site.warning","fallback":"Not enough room for structure at this site.","color":"white","bold":false}]