execute if predicate nitdim:in_buried_ocean positioned ^-3 ^0.5 ^ if predicate nitdim:chance_30 run function nitsea:illagers/spawns/scientist
execute if predicate nitdim:in_buried_ocean positioned ^3 ^0.5 ^ if predicate nitdim:chance_30 run function nitsea:illagers/spawns/wizard
execute if predicate nitdim:in_buried_ocean positioned ^ ^0.5 ^3 run function nitsea:illagers/spawns/giant_drowned

execute if predicate nitdim:in_primordial_desert positioned ^-3 ^0.5 ^ if predicate nitdim:chance_30 run function nitex:illagers/spawns/researcher
execute if predicate nitdim:in_primordial_desert positioned ^3 ^0.5 ^ if predicate nitdim:chance_30 run function nitex:illagers/spawns/vindicator
execute if predicate nitdim:in_primordial_desert positioned ^ ^0.5 ^3 run function nitex:illagers/spawns/illusioner

playsound entity.vindicator.ambient block @a ~ ~ ~ 2 1
scoreboard players reset @s nitResourceTime