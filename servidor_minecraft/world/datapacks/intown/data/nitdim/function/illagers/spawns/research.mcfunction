execute positioned ^-2 ^0.5 ^ run function nitex:illagers/spawns/researcher
execute positioned ^2 ^0.5 ^ if predicate nitdim:chance_30 run function nitex:illagers/spawns/vindicator
execute positioned ^ ^0.5 ^2 if predicate nitdim:chance_30 run function nitex:illagers/spawns/pillager
playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime