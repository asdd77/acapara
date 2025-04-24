###Checks Location###
execute if entity @s[tag=nitinvFounder] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitinv.contract.warning.founder","fallback":"You have already begun an Inventor's Tower. You cannot found another.","color":"white","bold":false}]
execute unless entity @s[nbt={Dimension:"nitdim:buried_ocean"}] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.contract.warning.dimension","fallback":"You must set sail in the Buried Ocean.","color":"white","bold":false}]
execute unless block ~ ~ ~ minecraft:water run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.contract.warning.location","fallback":"You must set sail in open water.","color":"white","bold":false}]
execute if entity @e[tag=nitSFM,distance=..500] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.contract.warning.distance","fallback":"You cannot sail within 500 blocks of another fleet. Venture out farther!","color":"white","bold":false}]
execute unless entity @s[tag=nitinvFounder] if entity @s[nbt={Dimension:"nitdim:buried_ocean"}] unless entity @e[tag=nitSFM,distance=..500] if block ~ ~ ~ minecraft:water run tag @s add nitClearCondition

###Builds Wagon if clear###
execute if entity @s[tag=nitClearCondition] run tellraw @s [{"text":"[回]","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitsea.contract.begin","fallback":"You begin to weigh anchor...","color":"white","bold":false}]
execute if entity @s[tag=nitClearCondition] run function nitsea:contract

###Reset Trigger###
scoreboard players reset @s nitContract
tag @s remove nitClearCondition