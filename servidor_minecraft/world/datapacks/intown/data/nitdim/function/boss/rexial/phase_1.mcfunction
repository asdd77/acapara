###Behavior above half health###
execute if entity @s[tag=!nitRevived] run data modify entity @s NoAI set value 1b
execute if entity @s[tag=!nitRevived,tag=!nitAttacking] if entity @e[tag=nitRexialRose,distance=..3] run tp @s ~ ~ ~ facing entity @p
execute if entity @s[tag=!nitRevived] unless entity @e[tag=nitRexialRose,distance=..3] run function nitdim:boss/arenas/rexial_return
execute if entity @s[tag=nitRevived] unless entity @s[tag=nitAttacking] run data modify entity @s NoAI set value 0b

###Random Attack Selection###
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 60.. if predicate nitdim:chance_1 run tag @s add nitBossAttack
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 100.. run tag @s add nitBossAttack
execute if entity @s[tag=nitBossAttack] run function nitdim:boss/attacks/generic_attack_select

##Adjust attack based on context###
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 1 if entity @e[tag=nitRexialCloud,distance=..12] run scoreboard players set @s nitAttack 3
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 3 if entity @e[tag=nitRexialMinion,distance=..12] run scoreboard players set @s nitAttack 2

###Perform Attacks###
execute if score @s nitAttack matches 1 run function nitdim:boss/attacks/rexial/fire_spray_a
execute if score @s nitAttack matches 2 run function nitdim:boss/attacks/rexial/magma_swing
execute if score @s nitAttack matches 3 run function nitdim:boss/attacks/rexial/summon_a