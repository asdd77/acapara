###Returns boss above half health to home station###
execute at @e[tag=nitRexialRose,limit=1,sort=nearest] run tp @s ~ ~1.5 ~
particle minecraft:poof ~ ~0.7 ~ 0.2 0.6 0.2 0.3 70 force
playsound minecraft:entity.vindicator.celebrate hostile @a[distance=..20] ~ ~ ~ 3 1