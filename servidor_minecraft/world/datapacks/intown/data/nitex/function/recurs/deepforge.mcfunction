###Resets recursion counter and collects Items from hopper###
scoreboard players set @s nitResourceTime 0
data modify entity @s data.Items set from block ~ ~ ~ Items

###Begins smelting recursion###
execute if entity @s[scores={nitResourceTime=..4}] run function nitex:recurs/deepforge_smelt

###Copies smelted items into hopper and consumes lava###
data modify block ~ ~ ~ Items set from entity @s data.Items
setblock ~ ~ ~-4 minecraft:cauldron

###Cosmetic###
particle minecraft:lava ~ ~ ~0.4 0.3 0.3 0.3 3 10 force
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 10