###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..20] ~ ~ ~ 3 1
execute if score @s nitBossTime matches 0..24 facing entity @a[distance=..12,limit=1,sort=nearest] feet rotated ~ 0 positioned ^ ^ ^3 run function nitdim:boss/cosmetic/rexial/minions_conjure

###Spawn###
execute if score @s nitBossTime matches 25 facing entity @a[distance=..12,limit=1,sort=nearest] feet rotated ~ 0 positioned ^ ^ ^3 run function nitdim:boss/entities/rexial_minion_b