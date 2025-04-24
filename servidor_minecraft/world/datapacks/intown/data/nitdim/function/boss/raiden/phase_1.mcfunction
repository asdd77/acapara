###Behavior above half health###
data modify entity @s NoAI set value 1b
data modify entity @s NoGravity set value 1b
execute unless entity @s[tag=nitAttacking] if entity @e[tag=nitRaidenRose,distance=..3] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[tag=nitRaidenRose,distance=..3] run function nitdim:boss/arenas/raiden_return

###Random Attack Selection###
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 60.. if predicate nitdim:chance_1 run tag @s add nitBossAttack
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 100.. run tag @s add nitBossAttack
execute if entity @s[tag=nitBossAttack] run function nitdim:boss/attacks/generic_attack_select

##Adjust attack based on context###
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 1 if entity @e[tag=nitRaidenCloud,distance=..5] run scoreboard players set @s nitAttack 3
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 3 if entity @e[type=minecraft:drowned,distance=..5] run scoreboard players set @s nitAttack 2

###Perform Attacks###
execute if score @s nitAttack matches 1 run function nitdim:boss/attacks/raiden/potion_spray_a
execute if score @s nitAttack matches 2 run function nitdim:boss/attacks/raiden/omen_wave
execute if score @s nitAttack matches 3 run function nitdim:boss/attacks/raiden/summon_a