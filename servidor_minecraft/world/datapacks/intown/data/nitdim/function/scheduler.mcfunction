execute as @e[tag=nitTicking] at @s run function nitdim:clock_scheduled
execute as @e[predicate=nitdim:in_tempest,type=!falling_block] at @s run function nitdim:clock_scheduled_tempest
execute as @e[type=piglin] at @s run function nitdim:recurs/piglin_types
execute as @a at @s run function nitdim:player_scheduled
schedule function nitdim:scheduler 3s