###RNG###
execute store result score @s nitRandom run random value 0..1

###Place with random rotation###
execute if score @s nitRandom matches 0 run place template nitinv:tower/intersection ~-10 ~10 ~-10

execute if score @s nitRandom matches 1 run place template nitinv:tower/intersection ~10 ~10 ~-10 clockwise_90

###Detects adjacent unfinished towers###
execute positioned ~10 ~ ~-10 if entity @e[tag=nitISitePlanner,dx=22,y=0,dy=256,dz=22] run tag @s add nitSiteExistsEast
execute positioned ~-30 ~ ~-10 if entity @e[tag=nitISitePlanner,dx=22,y=0,dy=256,dz=22] run tag @s add nitSiteExistsWest
execute positioned ~-10 ~ ~-30 if entity @e[tag=nitISitePlanner,dx=22,y=0,dy=256,dz=22] run tag @s add nitSiteExistsNorth
execute positioned ~-10 ~ ~10 if entity @e[tag=nitISitePlanner,dx=22,y=0,dy=256,dz=22] run tag @s add nitSiteExistsSouth

###Builds bridges if there is no unfinished tower there###
execute if entity @s[tag=!nitSiteExistsEast] run place template nitinv:tower/intersection_arm ~0 ~10 ~-10

execute if entity @s[tag=!nitSiteExistsWest] run place template nitinv:tower/intersection_arm ~0 ~10 ~10 180

execute if entity @s[tag=!nitSiteExistsNorth] run place template nitinv:tower/intersection_arm ~-10 ~10 ~0 counterclockwise_90

execute if entity @s[tag=!nitSiteExistsSouth] run place template nitinv:tower/intersection_arm ~10 ~10 ~0 clockwise_90

function nitinv:siteplanner/cleanup