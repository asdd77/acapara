data modify entity @s Invulnerable set value 0b
playsound minecraft:block.conduit.deactivate hostile @a[distance=..20] ~ ~ ~ 3 1
bossbar set nitdim:raiden color white
scoreboard players reset @s nitInvulTime