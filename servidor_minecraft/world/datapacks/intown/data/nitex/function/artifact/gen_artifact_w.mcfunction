function nitex:artifact/assign_artifact

execute if score @s nitRandom matches 1 run place template nitex:artifact/oasis_old ~-30 ~-3 ~-7
execute if score @s nitRandom matches 2 run place template nitex:artifact/glass_old ~-30 ~-3 ~-7
execute if score @s nitRandom matches 3 run place template nitex:artifact/cactus_old ~-30 ~-3 ~-7
execute if score @s nitRandom matches 4 run place template nitex:artifact/obsidian_old ~-30 ~-3 ~-7

scoreboard players add @e[tag=nitArtifactSite] nitID 0
execute as @e[tag=nitArtifactSite,scores={nitID=0},limit=1,sort=nearest] at @s run function nitdim:id_set_mine_foreman

scoreboard players reset @s nitRandom
execute positioned ~-15 ~ ~ run tag @e[tag=nitSitePlanner,limit=1,sort=nearest] add nitKilled

advancement grant @p[distance=..20] only nitex:nitex/find_artifact