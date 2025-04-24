###General Operation###
bossbar set nitdim:raiden players @a[distance=..30]
execute unless entity @e[tag=nitRaidenBoss,distance=..30] run function nitdim:boss/arenas/raiden_cleared

###Initial Chat Line/Attack###
scoreboard players add @s nitResourceTime 0
scoreboard players add @s nitResourceTime 1
execute if score @s nitResourceTime matches 40 run tag @e[tag=nitBoss,limit=1,sort=nearest,distance=..30] add nitBossAttack
execute if score @s nitResourceTime matches 40 as @e[tag=nitBoss,limit=1,sort=nearest,distance=..30] run function nitdim:boss/chat/raiden