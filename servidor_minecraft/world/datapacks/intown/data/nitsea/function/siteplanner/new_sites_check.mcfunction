###Creates new siteplanners for unoccupied sites adjacent to site newly constructed north-east site###
execute if entity @s[tag=nitSiteNE] positioned ~-24 ~ ~-31 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNW
execute if entity @s[tag=nitSiteNE] positioned ~26 ~ ~-31 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNE
execute if entity @s[tag=nitSiteNE] positioned ~26 ~ ~-3 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSE
execute if entity @s[tag=nitSiteNE] run function nitsea:siteplanner/new_sites_tech/newsite_ne

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed north-west site###
execute if entity @s[tag=nitSiteNW] positioned ~-50 ~ ~-3 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSW
execute if entity @s[tag=nitSiteNW] positioned ~-50 ~ ~-31 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNW
execute if entity @s[tag=nitSiteNW] positioned ~0 ~ ~-31 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNE
execute if entity @s[tag=nitSiteNW] run function nitsea:siteplanner/new_sites_tech/newsite_nw

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed south-east site###
execute if entity @s[tag=nitSiteSE] positioned ~26 ~ ~-17 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNE
execute if entity @s[tag=nitSiteSE] positioned ~26 ~ ~11 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSE
execute if entity @s[tag=nitSiteSE] positioned ~-24 ~ ~11 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSW
execute if entity @s[tag=nitSiteSE] run function nitsea:siteplanner/new_sites_tech/newsite_se

###Creates new siteplanners for unoccupied sites adjacent to site newly constructed south-west site###
execute if entity @s[tag=nitSiteSW] positioned ~0 ~ ~11 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSE
execute if entity @s[tag=nitSiteSW] positioned ~-50 ~ ~11 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsSW
execute if entity @s[tag=nitSiteSW] positioned ~-50 ~ ~-17 if entity @e[tag=nitSite,dx=25,y=0,dy=128,dz=25] run tag @s add nitSiteExistsNW
execute if entity @s[tag=nitSiteSW] run function nitsea:siteplanner/new_sites_tech/newsite_sw

###Cleanup###
tag @a add nitSeafarer
tag @e[type=minecraft:villager,distance=..25] add nitSeafarer
execute as @e[tag=nitSeafarer,distance=..25] at @s run function nitdim:id_set_first_mate
kill @e[type=item,distance=..2,tag=!smithed.entity,tag=!smithed.strict]
execute if entity @s[tag=nitSiteNE] run particle poof ~12 ~2 ~-12 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteNW] run particle poof ~-12 ~2 ~-12 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteSE] run particle poof ~12 ~2 ~-12 3 2 3 0.3 200 force
execute if entity @s[tag=nitSiteSW] run particle poof ~-12 ~2 ~12 3 2 3 0.3 200 force
playsound minecraft:block.anvil.use block @a ~ ~ ~ 2 0.7
playsound minecraft:item.bucket.empty block @a ~ ~ ~ 2 0.5
playsound minecraft:entity.boat.paddle_land block @a ~ ~ ~ 2 0.7 1
playsound minecraft:block.chest.open block @a ~ ~ ~ 2 0.7 1