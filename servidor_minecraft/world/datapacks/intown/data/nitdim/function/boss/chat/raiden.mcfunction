###Scoreboard Handling###
scoreboard players add @s nitResourceSpawn 0
scoreboard players add @s nitResourceSpawn 1
scoreboard players reset @s nitResourceTime
execute if score @s nitResourceSpawn matches ..6 run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 2 1

###Living Lines###
execute if score @s nitResourceSpawn matches 1 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.1","fallback":"How dare you damage my experiments, interloper!","color":"white","bold":false}]

execute if score @s nitResourceSpawn matches 2 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.2","fallback":"I won't face failure again!","color":"white","bold":false}]

execute if score @s nitResourceSpawn matches 3 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.3","fallback":"Your ignorance does you and I more harm than you know!","color":"white","bold":false}]

execute if score @s nitResourceSpawn matches 4 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.4","fallback":"The necromantic energy here is PERFECT! I won't be outdone by an outsider!","color":"white","bold":false}]

execute if score @s nitResourceSpawn matches 5 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.5","fallback":"When my experiments are complete, my people and I will never fear death again!","color":"white","bold":false}]

execute if score @s nitResourceSpawn matches 6 run tellraw @a[distance=..30] ["",{"text":"[","color":"white","bold":false},{"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","bold":true,"color":"blue"},{"text":"]: ","color":"white","bold":false},{"translate":"nitsea.dialogue.raiden.6","fallback":"I will unlock the secrets of the Tyrant's immortality for myself!","color":"white","bold":false}]