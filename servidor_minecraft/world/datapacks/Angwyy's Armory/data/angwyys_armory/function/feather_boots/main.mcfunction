execute as @s[scores={double_jumps_left=10..},nbt={OnGround:false},tag=!has_double_jumped] at @s if predicate angwyys_armory:sneaking run function angwyys_armory:feather_boots/double_jump

scoreboard players add @s double_jump 0

scoreboard players set @s[scores={double_jumps_left=29..}] double_jumps_left 30
scoreboard players add @s[tag=!no_double_jump_recharge] double_jumps_left 1

tag @s[predicate=!angwyys_armory:sneaking] remove has_double_jumped

execute if score @s display_priority matches 2 run function angwyys_armory:feather_boots/gui


