scoreboard players reset @s
playsound entity.generic.explode block @a ~ ~ ~ 3 1
playsound entity.iron_golem.death block @a ~ ~ ~ 3 0.8
particle explosion ~ ~1.5 ~ 1.5 1.5 1.5 0 30 normal
particle lava ~ ~1.5 ~ 1.5 1.5 1.5 0.07 10 normal
execute if predicate nitdim:in_buried_ocean run loot spawn ~ ~1 ~ loot nitsea:command/objective
execute if predicate nitdim:in_primordial_desert run loot spawn ~ ~1 ~ loot nitex:command/objective
fill ~-2 ~ ~-2 ~2 ~5 ~2 air replace barrier
kill @e[tag=nitObjectiveHat,limit=1,sort=nearest]
kill @s