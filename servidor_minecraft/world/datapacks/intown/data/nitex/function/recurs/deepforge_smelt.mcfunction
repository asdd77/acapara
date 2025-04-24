###Targets next item to be smelted###
data modify entity @s[scores={nitResourceTime=0}] data.Target set from entity @s data.Items[0]
data modify entity @s[scores={nitResourceTime=1}] data.Target set from entity @s data.Items[1]
data modify entity @s[scores={nitResourceTime=2}] data.Target set from entity @s data.Items[2]
data modify entity @s[scores={nitResourceTime=3}] data.Target set from entity @s data.Items[3]
data modify entity @s[scores={nitResourceTime=4}] data.Target set from entity @s data.Items[4]

###Smelts targeted item if able###
execute if predicate nitex:deepforge/iron run data modify entity @s data.Target.id set value "minecraft:iron_ingot"
execute if predicate nitex:deepforge/gold run data modify entity @s data.Target.id set value "minecraft:gold_ingot"
execute if predicate nitex:deepforge/coal run data modify entity @s data.Target.id set value "minecraft:coal"
execute if predicate nitex:deepforge/copper run data modify entity @s data.Target.id set value "minecraft:copper_ingot"
execute if predicate nitex:deepforge/redstone run data modify entity @s data.Target.id set value "minecraft:redstone"
execute if predicate nitex:deepforge/lapis run data modify entity @s data.Target.id set value "minecraft:lapis_lazuli"
execute if predicate nitex:deepforge/diamond run data modify entity @s data.Target.id set value "minecraft:diamond"
execute if predicate nitex:deepforge/quartz run data modify entity @s data.Target.id set value "minecraft:quartz"
execute if predicate nitex:deepforge/emerald run data modify entity @s data.Target.id set value "minecraft:emerald"

###Returns smelted target item to inventory###
data modify entity @s[scores={nitResourceTime=0}] data.Items[0] set from entity @s data.Target
data modify entity @s[scores={nitResourceTime=1}] data.Items[1] set from entity @s data.Target
data modify entity @s[scores={nitResourceTime=2}] data.Items[2] set from entity @s data.Target
data modify entity @s[scores={nitResourceTime=3}] data.Items[3] set from entity @s data.Target
data modify entity @s[scores={nitResourceTime=4}] data.Items[4] set from entity @s data.Target

###Recurs smelting process###
scoreboard players add @s nitResourceTime 1
execute if entity @s[scores={nitResourceTime=..4}] run function nitex:recurs/deepforge_smelt