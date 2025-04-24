###Sets initial health###
execute if entity @s[tag=nitHealthEasy,tag=!nitPrepared] run scoreboard players set @s nitBaseHealth 50
execute if entity @s[tag=nitHealthMedium,tag=!nitPrepared] run scoreboard players set @s nitBaseHealth 80
execute if entity @s[tag=nitHealthHard,tag=!nitPrepared] run scoreboard players set @s nitBaseHealth 100
execute if score @s nitBaseHealth matches 1.. run tag @s add nitPrepared

##Recurring mob spawning###
scoreboard players add @s nitResourceTime 0
execute if entity @a[distance=..30] run scoreboard players add @s nitResourceTime 1
execute if score @s nitResourceTime matches 200.. if predicate nitdim:chance_1 unless entity @e[type=#nitdim:illager,tag=nitIllagerEntity,distance=..12] facing entity @p feet rotated ~ 0 run function nitdim:illagers/reinforcements

###Handles damage amount###
scoreboard players add @s nitTemp 0
scoreboard players remove @s[scores={nitTemp=1..}] nitTemp 1
execute if score @s nitDamage matches 1.. run scoreboard players operation @s nitBaseHealth -= @s nitDamage
scoreboard players reset @s nitDamage
execute if score @s[tag=nitPrepared] nitBaseHealth matches ..0 run function nitdim:illagers/objective_destroy

###Displays hitbox particles###
execute if entity @a[distance=..30] run function nitdim:illagers/cosmetic/particle_projection