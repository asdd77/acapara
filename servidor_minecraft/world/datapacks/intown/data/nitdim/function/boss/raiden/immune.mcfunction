data modify entity @s Invulnerable set value 1b
playsound minecraft:block.conduit.activate hostile @a[distance=..20] ~ ~ ~ 3 1
bossbar set nitdim:raiden color blue
scoreboard players reset @s nitInvulTime