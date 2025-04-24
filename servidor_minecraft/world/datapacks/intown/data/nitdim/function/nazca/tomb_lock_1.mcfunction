###Opens the tomb eastwardly if gold block is undisturbed###
execute if block ~3 ~ ~ minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_1 ~-2 ~-12 ~-5 none
execute if block ~3 ~ ~ minecraft:gold_block run tag @s add nitUnlocked

###Opens the tomb southwardly if gold block is undisturbed###
execute if block ~ ~ ~3 minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_1 ~5 ~-12 ~-2 clockwise_90
execute if block ~ ~ ~3 minecraft:gold_block run tag @s add nitUnlocked

###Opens the tomb westwardly if gold block is undisturbed###
execute if block ~-3 ~ ~ minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_1 ~2 ~-12 ~5 180
execute if block ~-3 ~ ~ minecraft:gold_block run tag @s add nitUnlocked

###Opens the tomb northwardly if gold block is undisturbed###
execute if block ~ ~ ~-3 minecraft:gold_block run place template nitdim:primordial_desert/nazca/tomb_chamber_1 ~-5 ~-12 ~2 counterclockwise_90
execute if block ~ ~ ~-3 minecraft:gold_block run tag @s add nitUnlocked

###Cosmetics###
execute if entity @s[tag=nitUnlocked] run playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..20] ~ ~ ~ 20
execute if entity @s[tag=nitUnlocked] run particle minecraft:cloud ~ ~0.5 ~ 0.2 1 0.2 0.2 50 force
execute unless block ~ ~ ~ minecraft:dispenser run kill @s