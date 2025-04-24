###Randomizes the sails' wool color###
scoreboard players set @s nitTemp 15
scoreboard players operation @s nitID %= @s nitTemp
execute if entity @s[scores={nitID=1}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:orange_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=2}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:magenta_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=3}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:light_blue_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=4}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:yellow_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=5}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:lime_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=6}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:pink_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=7}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:gray_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=8}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:light_gray_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=9}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:cyan_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=10}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:purple_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=11}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:blue_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=12}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:brown_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=13}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:green_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=14}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:red_wool replace minecraft:white_wool
execute if entity @s[scores={nitID=15}] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:black_wool replace minecraft:white_wool

###Assigns Patron personalized sail colors###
execute at @s[name=kanokarob] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:white_wool replace #minecraft:wool
execute at @s[name=Frosty_l_Flakes] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:cyan_wool replace #minecraft:wool
execute at @s[name=JollyChristopher] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:magenta_wool replace #minecraft:wool
execute at @s[name=Fusion_MC] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:lime_wool replace #minecraft:wool
execute at @s[name=erddad] run fill ~-5 ~2 ~-8 ~5 ~20 ~2 minecraft:purple_wool replace #minecraft:wool

execute store result score @s nitID run data get entity @s UUID[0]