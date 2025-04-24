###Performs item distribution###
execute if entity @s[tag=nitSlateCrusher] at @e[tag=nitSlateStor,limit=1,sort=nearest] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:deepslate",count:12}}
execute if entity @s[tag=nitCopperMiner] at @e[tag=nitCopperStor,limit=1,sort=nearest] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:copper_ingot",count:12}}
execute if entity @s[tag=nitDiamondMiner] at @e[tag=nitDiamondStor,limit=1,sort=nearest] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:diamond",count:3}}

###Announces the event###
execute if entity @s[tag=nitSlateCrusher] run tag @a[tag=nitExcavator] add nitInform
execute if entity @s[tag=nitCopperMiner] run tag @a[tag=nitExcavator] add nitInform
execute if entity @s[tag=nitSlateCrusher] at @e[tag=nitSlateStor] run playsound minecraft:block.bell.use master @a ~ ~ ~ 5
execute if entity @s[tag=nitCopperMiner] at @e[tag=nitCopperStor] run playsound minecraft:block.bell.use master @a ~ ~ ~ 5