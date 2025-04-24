attribute @s minecraft:generic.gravity modifier add rocket_boots -0.12 add_value

playsound block.azalea.break player @a ~ ~ ~ 0.095 0 0
playsound block.anvil.hit player @a ~ ~ ~ 0.05 0 0
playsound block.ancient_debris.hit player @a ~ ~ ~ 0.05 0 0
playsound block.campfire.crackle player @a ~ ~ ~ 0.1 1 0

particle small_flame ~ ~ ~ 0.25 0 0.25 0.01 2 normal
particle flame ~ ~ ~ 0.25 0 0.25 0.01 1 normal
execute if predicate angwyys_armory:jetpack_particles run particle campfire_signal_smoke ~ ~ ~ 0 0 0 0.005 1 normal
particle campfire_cosy_smoke ~ ~ ~ 0.25 -0.005 0.25 0.005 2 normal

execute positioned ~ ~2 ~ unless block ~ ~ ~ #wither_immune unless block ~ ~ ~ water unless block ~ ~ ~ lava unless block ~ ~ ~ air unless block ~ ~ ~ cave_air unless block ~ ~ ~ void_air unless block ~ ~ ~ structure_void run function angwyys_armory:rocket_boots/break_block

scoreboard players remove @s rocket_fuel 12
tag @s add no_rocket_recharge
scoreboard players set @s display_priority 3