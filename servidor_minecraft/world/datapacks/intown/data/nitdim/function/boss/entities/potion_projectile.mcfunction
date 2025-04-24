###Performs timer, and cosmetics###
scoreboard players add @s nitBossTime 0
scoreboard players add @s nitBossTime 1
particle minecraft:witch ~ ~ ~ 0 0.1 0 0 1 normal

###Motion and collission###
execute if block ^ ^ ^0.15 #minecraft:air run tp @s[tag=!nitBigSpell] ^ ^ ^0.25 ~ ~
execute if block ^ ^ ^0.15 #minecraft:air run tp @s[tag=nitBigSpell] ^ ^ ^0.45 ~ ~
execute unless block ^ ^ ^0.15 #minecraft:air run function nitdim:boss/entities/potion_detonate
execute positioned ~ ~-1 ~ if entity @a[distance=..0.3] at @s run function nitdim:boss/entities/potion_detonate

execute if score @s nitBossTime matches 100.. run kill @s