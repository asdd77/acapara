execute if predicate nitdim:in_buried_ocean positioned ^-2 ^0.5 ^ run function nitsea:illagers/spawns/scientist
execute if predicate nitdim:in_buried_ocean positioned ^2 ^0.5 ^ run function nitsea:illagers/spawns/scientist
execute if predicate nitdim:in_buried_ocean positioned ^ ^0.5 ^2 if predicate nitdim:chance_30 run function nitsea:illagers/spawns/wizard

execute if predicate nitdim:in_primordial_desert positioned ^-2 ^0.5 ^ run function nitex:illagers/spawns/researcher
execute if predicate nitdim:in_primordial_desert positioned ^2 ^0.5 ^ run function nitex:illagers/spawns/researcher
execute if predicate nitdim:in_primordial_desert positioned ^ ^0.5 ^2 if predicate nitdim:chance_30 run function nitex:illagers/spawns/vindicator

playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime