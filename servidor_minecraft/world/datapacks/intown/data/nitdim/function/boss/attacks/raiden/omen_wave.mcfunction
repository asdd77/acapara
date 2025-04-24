###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1
execute if score @s nitBossTime matches 0..49 run function nitdim:boss/cosmetic/raiden/omen_wave

###Release###
execute if score @s nitBossHealth matches 101.. if score @s nitBossTime matches 50.. run function nitdim:boss/attacks/raiden/wave_launch_a
execute if score @s nitBossHealth matches ..100 if score @s nitBossTime matches 35.. run function nitdim:boss/attacks/raiden/wave_launch_b