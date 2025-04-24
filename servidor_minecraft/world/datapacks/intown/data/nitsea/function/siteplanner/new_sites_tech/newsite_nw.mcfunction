###Destroys adjacent defunct site planners###
execute positioned ~-27 ~ ~-15 run tag @e[tag=nitSitePlanner,dx=28,dz=16,y=-64,dy=312] add nitKilled

###Sets new site planners at available positions###
execute if entity @s[tag=!nitSiteExistsSW] run place template nitsea:siteplanner_sw ~-25 ~ ~
execute if entity @s[tag=!nitSiteExistsNW] run place template nitsea:siteplanner_nw ~-25 ~ ~-14
execute if entity @s[tag=!nitSiteExistsNE] run place template nitsea:siteplanner_ne ~-1 ~ ~-14