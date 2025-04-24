###Cosmetic###
playsound entity.player.attack.sweep hostile @a ~ ~ ~ 0.4 0.8
particle sweep_attack ~ ~ ~ 0.2 0 0.2 0 1 normal
particle crit ~ ~ ~ 0.2 0 0.2 0.01 5 normal
particle smoke ~ ~ ~ 0.2 0 0.2 0 3 normal
execute if score @s nitBossHealth matches ..100 run particle flame ~ ~ ~ 0.2 0 0.2 0 5 normal

###Damage###
execute if score @s nitBossHealth matches 101.. positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=2,dz=0] run damage @s 7.0 minecraft:fireball by @e[tag=nitRexialBoss,limit=1,sort=nearest]
execute if score @s nitBossHealth matches ..100 positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,dx=0,dy=2,dz=0] run damage @s 12.0 minecraft:fireball by @e[tag=nitRexialBoss,limit=1,sort=nearest]