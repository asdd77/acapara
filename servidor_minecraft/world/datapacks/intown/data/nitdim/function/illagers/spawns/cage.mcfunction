execute positioned ^-2.25 ^0.5 ^ run function nitex:illagers/spawns/pillager
execute positioned ^2.25 ^0.5 ^ run function nitex:illagers/spawns/pillager
execute positioned ^ ^0.5 ^2.25 if predicate nitdim:chance_30 run function nitex:illagers/spawns/vindicator
playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime