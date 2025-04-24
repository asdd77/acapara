scoreboard players reset @s
tag @s add nitKilled
tag @a add nitInventor
tag @e[type=minecraft:villager,distance=..20] add nitInventor
scoreboard players add @e[tag=nitIPO,limit=1,sort=nearest] nitTowerCraft 1
particle poof ~ ~15 ~ 6 6 6 0.3 200 force
playsound minecraft:block.beacon.power_select block @a ~ ~ ~ 2 1.2
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 2 1
playsound minecraft:entity.iron_golem.death block @a ~ ~ ~ 2 0.8 1
playsound minecraft:entity.elder_guardian.ambient block @a ~ ~ ~ 2 2