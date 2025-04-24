data modify entity @s Invulnerable set value 1b
playsound minecraft:block.conduit.activate hostile @a[distance=..20] ~ ~ ~ 3 1
execute if entity @s[tag=!nitRevived] run bossbar set nitdim:rexial color yellow
execute if entity @s[tag=nitRevived] run bossbar set nitdim:rexial color red
scoreboard players reset @s nitInvulTime