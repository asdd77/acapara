###Opens chamber eastwardly if gold block is undisturbed###
execute if block ~-11 ~9 ~ minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_2 ~0 ~-7 ~-5 none
execute if block ~-11 ~9 ~ minecraft:gold_block run tag @s add nitUnlocked

###Opens chamber southwardly if gold block is undisturbed###
execute if block ~ ~9 ~-11 minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_2 ~5 ~-7 ~0 clockwise_90
execute if block ~ ~9 ~-11 minecraft:gold_block run tag @s add nitUnlocked

###Opens chamber westwardly if gold block is undisturbed###
execute if block ~11 ~9 ~ minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_2 ~0 ~-7 ~5 180
execute if block ~11 ~9 ~ minecraft:gold_block run tag @s add nitUnlocked

###Opens chamber northwardly if gold block is undisturbed###
execute if block ~ ~9 ~11 minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_2 ~-5 ~-7 ~0 counterclockwise_90
execute if block ~ ~9 ~11 minecraft:gold_block run tag @s add nitUnlocked

###Cosmetics###
execute if entity @s[tag=nitUnlocked] run playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..20] ~ ~ ~ 20
execute if entity @s[tag=nitUnlocked] run particle minecraft:cloud ~ ~0.5 ~ 0.2 1 0.2 0.2 50 force
execute unless block ~ ~ ~ minecraft:dispenser run kill @s