###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.vindicator.ambient hostile @a ~ ~ ~ 2 0.75
execute if score @s nitBossTime matches 0..49 anchored eyes positioned ^ ^ ^1.25 run function nitdim:boss/cosmetic/rexial/magma_swing

###Release###
execute if score @s nitBossHealth matches 101.. if score @s nitBossTime matches 50.. run function nitdim:boss/attacks/rexial/magma_swing_active
execute if score @s nitBossHealth matches ..100 if score @s nitBossTime matches 35.. run function nitdim:boss/attacks/rexial/magma_swing_active