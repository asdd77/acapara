###Performs item and fish distribution###
execute if entity @s[tag=nitWeaver] at @e[tag=nitWoolStor,limit=1,sort=nearest] run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:white_wool",count:8}}
execute if entity @s[tag=nitFruitTender] at @e[tag=nitFruitStor,limit=1,sort=nearest] run summon minecraft:item ~ ~0.4 ~ {Item:{id:"minecraft:apple",count:3}}

###Announces the event###
execute if entity @s[tag=nitWeaver] run tag @a[tag=nitSeafarer] add nitInform
execute if entity @s[tag=nitFruitTender] run tag @a[tag=nitSeafarer] add nitInform
execute if entity @s[tag=nitWeaver] at @e[tag=nitFruitStor] run playsound minecraft:block.bell.use master @a ~ ~ ~ 5
execute if entity @s[tag=nitFruitTender] at @e[tag=nitFruitStor] run playsound minecraft:block.bell.use master @a ~ ~ ~ 5