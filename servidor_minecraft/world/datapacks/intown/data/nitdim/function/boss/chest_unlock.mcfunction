data remove block ~ ~ ~ Lock
execute if predicate nitdim:in_buried_ocean run data modify block ~ ~ ~ LootTable set value "nitsea:chest/castle_boss"
execute if predicate nitdim:in_primordial_desert run data modify block ~ ~ ~ LootTable set value "nitex:chest/pyramid_boss"
particle poof ~ ~ ~ 0.3 0.3 0.3 0.05 10 normal
playsound block.chest.locked block @a ~ ~ ~ 1 1