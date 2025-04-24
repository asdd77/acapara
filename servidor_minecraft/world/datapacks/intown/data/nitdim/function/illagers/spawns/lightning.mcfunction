execute if predicate nitdim:in_buried_ocean positioned ^-1.25 ^0.5 ^ run function nitsea:illagers/spawns/pirate_random
execute if predicate nitdim:in_buried_ocean positioned ^1.25 ^0.5 ^ if predicate nitdim:chance_30 run function nitsea:illagers/spawns/scientist
execute if predicate nitdim:in_primordial_desert positioned ^-1.25 ^0.5 ^ run function nitex:illagers/spawns/vindicator
execute if predicate nitdim:in_primordial_desert positioned ^1.25 ^0.5 ^ if predicate nitdim:chance_30 run function nitex:illagers/spawns/researcher
playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime