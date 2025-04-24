###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..20] ~ ~ ~ 3 1
execute if score @s nitBossTime matches 0..24 facing entity @a[distance=..12,limit=1,sort=nearest] feet rotated ~ 0 positioned ^ ^ ^2 run function nitdim:boss/cosmetic/raiden/minions_conjure

###Spawn###
execute if score @s nitBossTime matches 25 facing entity @a[distance=..12,limit=1,sort=nearest] feet rotated ~ 0 positioned ^ ^ ^2 run function nitdim:boss/entities/raiden_minion_b