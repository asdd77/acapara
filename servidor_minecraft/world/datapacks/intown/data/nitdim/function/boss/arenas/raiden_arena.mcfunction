###Scoreboard Prep###
scoreboard players add @s nitResourceSpawn 0

###State Change###
execute if score @s nitResourceSpawn matches 0 unless entity @e[tag=nitIllagerEntity,tag=nitBaseObjective,distance=..40] if entity @a[distance=..32] run function nitdim:boss/arenas/raiden_start
execute if score @s nitResourceSpawn matches 1 if entity @a[distance=..30] run function nitdim:boss/arenas/raiden_active