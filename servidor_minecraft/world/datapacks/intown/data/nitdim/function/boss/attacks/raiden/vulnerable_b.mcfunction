data modify entity @s Invulnerable set value 0b
playsound minecraft:block.conduit.activate hostile @a[distance=..20] ~ ~ ~ 3 1
summon potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", count: 1, tag: {Potion: "minecraft:regeneration"}}}
function nitdim:boss/attacks/reset