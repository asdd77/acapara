###Destroys adjacent defunct site planners###
execute positioned ~-9 ~-32 ~-17 run tag @e[tag=nitSitePlanner,dx=17,dy=36,dz=18] add nitKilled

###Sets new site planners at available positions###
execute if entity @s[tag=!nitSiteExistsNorth] run place template nitex:siteplanner_n ~ ~ ~-15
execute if entity @s[tag=!nitSiteExistsEast] run place template nitex:siteplanner_e ~7 ~ ~-8
execute if entity @s[tag=!nitSiteExistsWest] run place template nitex:siteplanner_w ~-7 ~ ~-8