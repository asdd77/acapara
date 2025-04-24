###Randomly selects dimension ID###
execute store result score @s nitRandom run random value 1..3

###Assigns corresponding Link###
execute if score @s nitRandom matches 1 run tag @s add nitLinkBuriedOcean
execute if score @s nitRandom matches 2 run tag @s add nitLinkPrimordialDesert
execute if score @s nitRandom matches 3 run tag @s add nitLinkTempest