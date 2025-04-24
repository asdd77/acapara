execute if entity @s[tag=nitSiteEast] run place template nitex:mine/surveyor ~1 ~-3 ~-7

execute if entity @s[tag=nitSiteWest] run place template nitex:mine/surveyor ~-15 ~-3 ~-7

execute if entity @s[tag=nitSiteNorth] run place template nitex:mine/surveyor ~-7 ~-3 ~-15

execute if entity @s[tag=nitSiteSouth] run place template nitex:mine/surveyor ~-7 ~-3 ~1

tag @s add nitArtifactDiscovery
function nitex:siteplanner/new_sites_check
advancement grant @a[distance=..20] only nitex:nitex/complete_mine build-surveyor

###Performs Illager attacks###
function nitex:attacks_check


###Assign Surveyor ID###
execute as @e[tag=nitSurveyMarker,limit=1,sort=nearest] run function nitdim:id_set_mine_foreman