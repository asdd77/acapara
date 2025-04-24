###Scoreboard Handling###
scoreboard players add @s nitResourceSpawn 0
scoreboard players add @s nitResourceSpawn 1
scoreboard players reset @s nitResourceTime
execute if score @s[tag=!nitRevived] nitResourceSpawn matches ..6 run playsound minecraft:entity.vindicator.celebrate hostile @a ~ ~ ~ 2 1
execute if score @s[tag=nitRevived] nitResourceSpawn matches ..6 run playsound minecraft:entity.zombie_villager.ambient hostile @a ~ ~ ~ 2 1.4

###Living Lines###
execute if score @s[tag=!nitRevived] nitResourceSpawn matches 1 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.1","fallback":"Our plans will not be disrupted by you, interloper!","color":"white","bold":false}]

execute if score @s[tag=!nitRevived] nitResourceSpawn matches 2 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.2","fallback":"You cannot possibly imagine the suffering we've gone through to get this far!","color":"white","bold":false}]

execute if score @s[tag=!nitRevived] nitResourceSpawn matches 3 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.3","fallback":"I won't let your ignorance cost my people their lives!","color":"white","bold":false}]

execute if score @s[tag=!nitRevived] nitResourceSpawn matches 4 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.4","fallback":"What is the life of a few primitive animals to a prospering civilization?","color":"white","bold":false}]

execute if score @s[tag=!nitRevived] nitResourceSpawn matches 5 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.5","fallback":"I and my people will be free of death!","color":"white","bold":false}]

execute if score @s[tag=!nitRevived] nitResourceSpawn matches 6 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"yellow"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.6","fallback":"Never again will we face the torment of another world's tyranny!","color":"white","bold":false}]

###Undead Lines###
execute if score @s[tag=nitRevived] nitResourceSpawn matches 1 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.1","fallback":"Our plans will not be disrupted by you, interloper!","color":"white","bold":false}]

execute if score @s[tag=nitRevived] nitResourceSpawn matches 2 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.2","fallback":"You cannot possibly imagine the suffering we've gone through to get this far!","color":"white","bold":false}]

execute if score @s[tag=nitRevived] nitResourceSpawn matches 3 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.3","fallback":"I won't let your ignorance cost my people their lives!","color":"white","bold":false}]

execute if score @s[tag=nitRevived] nitResourceSpawn matches 4 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.4","fallback":"What is the life of a few primitive animals to a propsering civilization?","color":"white","bold":false}]

execute if score @s[tag=nitRevived] nitResourceSpawn matches 5 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.5","fallback":"I and my people will be free of death!","color":"white","bold":false}]

execute if score @s[tag=nitRevived] nitResourceSpawn matches 6 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","bold":true,"color":"red"},{"text":"]: ","color":"white","bold":false},{"translate":"nitex.dialogue.rexial.6","fallback":"Never again will we face the torment of another world's tyranny!","color":"white","bold":false}]
