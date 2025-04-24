###Destroys adjacent defunct site planners###
execute positioned ~-17 ~-32 ~-9 run tag @e[tag=nitSitePlanner,dx=17,dy=36,dz=18] add nitKilled

###Sets new site planners at available positions###
execute if entity @s[tag=!nitSiteExistsWest] run place template nitex:siteplanner_w ~-15 ~ ~
execute if entity @s[tag=!nitSiteExistsNorth] run place template nitex:siteplanner_n ~-8 ~ ~-7
execute if entity @s[tag=!nitSiteExistsSouth] run place template nitex:siteplanner_s ~-8 ~ ~7