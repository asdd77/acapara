###Behavior below half health###
data modify entity @s NoAI set value 0b
data modify entity @s NoGravity set value 0b
execute if score @s nitBossHealth matches 81.. run item replace entity @s weapon.mainhand with air
execute if score @s nitBossHealth matches 21..50 run item replace entity @s weapon.mainhand with minecraft:potion[potion_contents="minecraft:fire_resistance"]

###Random Attack Selection###
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 20.. if predicate nitdim:chance_1 run tag @s add nitBossAttack
execute if entity @s[tag=!nitAttacking] if score @s nitBossTime matches 80.. run tag @s add nitBossAttack
execute if entity @s[tag=nitBossAttack] run function nitdim:boss/attacks/generic_attack_select

##Adjust attack based on context###
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 1 if entity @e[tag=nitRaidenCloud,distance=..5] run scoreboard players set @s nitAttack 3
execute if score @s nitBossTime matches 0 if score @s nitAttack matches 3 if entity @e[type=minecraft:drowned,distance=..5] run scoreboard players set @s nitAttack 2

###Perform Attacks###
execute if score @s nitAttack matches 1 run function nitdim:boss/attacks/raiden/potion_spray_b
execute if score @s nitAttack matches 2 run function nitdim:boss/attacks/raiden/omen_wave
execute if score @s nitAttack matches 3 run function nitdim:boss/attacks/raiden/summon_b