###Performs once-per-day functions###
execute if score $dayTime nitResourceTime matches 6000 run function nitdim:time_noon
execute if score $dayTime nitResourceTime matches 12500 run function nitdim:time_evening

###Runs boss battles###
execute if entity @s[tag=nitIllagerEntity] run function nitdim:clock_illagers
execute if entity @s[tag=nitBoss] if entity @a[distance=..30] run function nitdim:boss/boss_clock
execute if entity @s[tag=nitBossArena] run function nitdim:boss/arena_clock
execute if entity @s[tag=nitBossEntity] run function nitdim:boss/entities_clock

###Runs recurring functions###
execute if entity @s[tag=nitinvPower] run function nitinv:recurs/power/clock
execute if entity @s[tag=nitinvLift] run function nitinv:recurs/lift/particles