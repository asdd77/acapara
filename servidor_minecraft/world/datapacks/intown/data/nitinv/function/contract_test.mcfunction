###Checks Location###
execute if entity @s[tag=nitseaFounder] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitsea.contract.warning.founder","fallback":"You have already begun a Seafarer's Fleet. You cannot found another.","color":"white","bold":false}]
execute unless entity @s[nbt={Dimension:"nitdim:tempest"}] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitinv.contract.warning.dimension","fallback":"You must begin inventing in the Tempest.","color":"white","bold":false}]
execute if entity @e[tag=nitIPO,distance=..500] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitinv.contract.warning.distance","fallback":"You cannot begin inventing within 500 blocks of another tower. Venture out farther!","color":"white","bold":false}]
execute unless entity @s[tag=nitseaFounder] if entity @s[nbt={Dimension:"nitdim:tempest"}] unless entity @e[tag=nitIPO,distance=..500] run tag @s add nitClearCondition

###Builds Tower if clear###
execute if entity @s[tag=nitClearCondition] run tellraw @s [{"text":"[回]","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitinv.contract.begin","fallback":"You begin to construct your tower...","color":"white","bold":false}]
execute if entity @s[tag=nitClearCondition] run function nitinv:contract

###Reset Trigger###
scoreboard players reset @s nitContract
tag @s remove nitClearCondition