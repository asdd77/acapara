execute store result score @s nitRandom run random value 1..4

execute if score @s nitRandom matches 1 if entity @e[tag=nitArtifactOasis,distance=..100] store result score @s nitRandom run random value 2..4
execute if score @s nitRandom matches 2 if entity @e[tag=nitArtifactGlass,distance=..100] store result score @s nitRandom run random value 3..5
execute if score @s nitRandom matches 3 if entity @e[tag=nitArtifactCactus,distance=..100] store result score @s nitRandom run random value 4..6
execute if score @s nitRandom matches 4 if entity @e[tag=nitArtifactObsidian,distance=..100] store result score @s nitRandom run random value 1..3
execute if score @s nitRandom matches 5 run scoreboard players set @s nitRandom 1
execute if score @s nitRandom matches 6 run scoreboard players set @s nitRandom 2