###Returns boss above half health to home station###
execute at @e[tag=nitRaidenRose,limit=1,sort=nearest] run tp @s ~ ~1.5 ~
particle minecraft:witch ~ ~0.7 ~ 0.2 0.6 0.2 0.3 70 force
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..20] ~ ~ ~ 3 1