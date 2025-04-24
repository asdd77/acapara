###Opens chamber eastwardly if gold block is undisturbed and both pressure plates are powered###
execute if block ~-27 ~10 ~ minecraft:gold_block if block ~-8 ~-2 ~3 crimson_pressure_plate[powered=true] if block ~-8 ~-2 ~-3 crimson_pressure_plate[powered=true] run place template nitdim:primordial_desert/nazca/tomb_treasure ~0 ~-4 ~-5 none
execute if block ~-27 ~10 ~ minecraft:gold_block if block ~-8 ~-2 ~3 crimson_pressure_plate[powered=true] if block ~-8 ~-2 ~-3 crimson_pressure_plate[powered=true] run tag @s add nitUnlocked

###Opens chamber southwardly if gold block is undisturbed and both pressure plates are powered###
execute if block ~ ~10 ~-27 minecraft:gold_block if block ~3 ~-2 ~-8 crimson_pressure_plate[powered=true] if block ~-3 ~-2 ~-8 crimson_pressure_plate[powered=true] run place template nitdim:primordial_desert/nazca/tomb_treasure ~5 ~-4 ~0 clockwise_90
execute if block ~ ~10 ~-27 minecraft:gold_block if block ~3 ~-2 ~-8 crimson_pressure_plate[powered=true] if block ~-3 ~-2 ~-8 crimson_pressure_plate[powered=true] run tag @s add nitUnlocked

###Opens chamber westwardly if gold block is undisturbed and both pressure plates are powered###
execute if block ~27 ~10 ~ minecraft:gold_block if block ~8 ~-2 ~3 crimson_pressure_plate[powered=true] if block ~8 ~-2 ~-3 crimson_pressure_plate[powered=true] run place template nitdim:primordial_desert/nazca/tomb_treasure ~0 ~-4 ~5 180
execute if block ~27 ~10 ~ minecraft:gold_block if block ~8 ~-2 ~3 crimson_pressure_plate[powered=true] if block ~8 ~-2 ~-3 crimson_pressure_plate[powered=true] run tag @s add nitUnlocked

###Opens chamber northwardly if gold block is undisturbed and both pressure plates are powered###
execute if block ~ ~10 ~27 minecraft:gold_block if block ~3 ~-2 ~8 crimson_pressure_plate[powered=true] if block ~-3 ~-2 ~8 crimson_pressure_plate[powered=true] run place template nitdim:primordial_desert/nazca/tomb_treasure ~-5 ~-4 ~0 counterclockwise_90
execute if block ~ ~10 ~27 minecraft:gold_block if block ~3 ~-2 ~8 crimson_pressure_plate[powered=true] if block ~-3 ~-2 ~8 crimson_pressure_plate[powered=true] run tag @s add nitUnlocked

###Cosmetics###
execute if entity @s[tag=nitUnlocked] run playsound minecraft:block.respawn_anchor.set_spawn block @a[distance=..20] ~ ~ ~ 20
execute if entity @s[tag=nitUnlocked] run particle minecraft:cloud ~ ~0.5 ~ 0.2 1 0.2 0.2 50 force
execute unless block ~ ~ ~ minecraft:dispenser run kill @s