###Determine Pirate Type###
execute store result score @s nitPirateType run random value 0..1

###Spawn Pirates
execute if score @s nitPirateType matches 0 run function nitsea:illagers/spawns/pirate_sword
execute if score @s nitPirateType matches 1 run function nitsea:illagers/spawns/pirate_bow