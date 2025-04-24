attribute @s generic.fall_damage_multiplier modifier remove double_jump
attribute @s minecraft:generic.safe_fall_distance modifier remove double_jump
tag @s remove has_double_jumped
tag @s remove no_double_jump_recharge
scoreboard players add @s groundtime 1
scoreboard players set @s[scores={motionY=1..}] fall_distance 0
tag @s remove no_rocket_recharge