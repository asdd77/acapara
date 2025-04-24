###Checks Location###
execute if entity @s[tag=nitexFounder] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitex.contract.warning.founder","fallback":"You have already begun an excavation. You cannot found another.","color":"white","bold":false}]
execute unless entity @s[nbt={Dimension:"nitdim:primordial_desert"}] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitex.contract.warning.dimension","fallback":"You must excavate in the Primordial Desert.","color":"white","bold":false}]
execute unless block ~ ~-1 ~ #nitdim:primordial_desert_surface run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitex.contract.warning.location","fallback":"You must begin your excavation on the desert sands.","color":"white","bold":false}]
execute if entity @e[tag=nitEMF,distance=..500] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.contract.warning.distance","fallback":": ","color":"white","bold":false},{"translate":"nitex.contract.warning.distance","fallback":"You cannot excavate within 500 blocks of another mine. Venture out farther!","color":"white","bold":false}]
execute unless entity @s[tag=nitexFounder] if entity @s[nbt={Dimension:"nitdim:primordial_desert"}] unless entity @e[tag=nitEMF,distance=..500] if block ~ ~-1 ~ #nitdim:primordial_desert_surface run tag @s add nitClearCondition

###Builds Mine if clear###
execute if entity @s[tag=nitClearCondition] run tellraw @s [{"text":"[回]","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitex.contract.begin","fallback":"You begin to drill into the desert...","color":"white","bold":false}]
execute if entity @s[tag=nitClearCondition] run function nitex:contract

###Reset Trigger###
scoreboard players reset @s nitContract
tag @s remove nitClearCondition