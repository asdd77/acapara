execute positioned ^-2 ^0.5 ^ run function nitsea:illagers/spawns/pirate_random
execute positioned ^2 ^0.5 ^ if predicate nitdim:chance_30 run function nitsea:illagers/spawns/pirate_random
playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime