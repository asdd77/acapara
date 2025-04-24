playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 1 1 0
particle gust ~ ~ ~ 0 0 0 0 1 force
scoreboard players set @s double_jump 4
scoreboard players remove @s double_jumps_left 10
tag @s add has_double_jumped
tag @s add no_double_jump_recharge

title @s title ""
attribute @s minecraft:generic.safe_fall_distance modifier add double_jump 6 add_value
attribute @s minecraft:generic.fall_damage_multiplier modifier add double_jump -0.5 add_multiplied_total
attribute @s minecraft:generic.gravity modifier add double_jump -0.36 add_value

scoreboard players set @s display_priority 2
