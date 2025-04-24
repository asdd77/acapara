###Cleanup when boss is gone###
advancement grant @a[distance=..20] only nitsea:nitsea/defeat_raiden
bossbar remove nitdim:raiden
kill @e[tag=nitBossEntity,distance=..30]
playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 2 1
playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 2 0.8
scoreboard players set @s nitResourceSpawn 2
execute at @e[tag=nitChestLock,limit=1,sort=nearest] run function nitdim:boss/chest_unlock