execute if entity @s[tag=nitSiteEast] run place template nitex:mine/research ~1 ~-3 ~-7

execute if entity @s[tag=nitSiteWest] run place template nitex:mine/research ~-15 ~-3 ~-7

execute if entity @s[tag=nitSiteNorth] run place template nitex:mine/research ~-7 ~-3 ~-15

execute if entity @s[tag=nitSiteSouth] run place template nitex:mine/research ~-7 ~-3 ~1

tag @s add nitArtifactDiscovery
function nitex:siteplanner/new_sites_check
advancement grant @a[distance=..20] only nitex:nitex/complete_mine build-research

###Performs Illager attacks###
function nitex:attacks_check

###Prepares research book###
execute as @e[tag=nitResearchPower,limit=1,sort=nearest] at @s run function nitex:siteplanner/setup_research