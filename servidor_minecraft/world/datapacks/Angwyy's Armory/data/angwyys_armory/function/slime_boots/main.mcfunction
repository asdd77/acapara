attribute @s[scores={fall_distance=87..}] generic.jump_strength modifier add slime_boots 4 add_value
attribute @s[scores={fall_distance=81..}] generic.jump_strength modifier add slime_boots 3.6 add_value
attribute @s[scores={fall_distance=74..}] generic.jump_strength modifier add slime_boots 3.2 add_value
attribute @s[scores={fall_distance=67..}] generic.jump_strength modifier add slime_boots 2.8 add_value
attribute @s[scores={fall_distance=60..}] generic.jump_strength modifier add slime_boots 2.4 add_value
attribute @s[scores={fall_distance=53..}] generic.jump_strength modifier add slime_boots 2 add_value
attribute @s[scores={fall_distance=46..}] generic.jump_strength modifier add slime_boots 1.6 add_value
attribute @s[scores={fall_distance=39..}] generic.jump_strength modifier add slime_boots 1.2 add_value
attribute @s[scores={fall_distance=32..}] generic.jump_strength modifier add slime_boots 0.8 add_value
attribute @s[scores={fall_distance=25..}] generic.jump_strength modifier add slime_boots 0.4 add_value
attribute @s[scores={fall_distance=8..}] generic.jump_strength modifier add slime_boots 0.17 add_value

attribute @s minecraft:generic.fall_damage_multiplier modifier add slime_boots -1 add_value

execute as @s[scores={groundtime=1,fall_distance=8..25}] at @s run particle item_slime ~ ~ ~ 0 0.005 0 0.5 6 normal
execute as @s[scores={groundtime=1,fall_distance=8..25}] at @s run playsound block.slime_block.fall player @a ~ ~ ~ 1 1 0
execute as @s[scores={groundtime=1,fall_distance=25..}] at @s run particle item_slime ~ ~ ~ 0 0.005 0 0.5 12 normal
execute as @s[scores={groundtime=1,fall_distance=25..}] at @s run playsound block.slime_block.fall player @a ~ ~ ~ 2 1 0
