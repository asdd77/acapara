advancement revoke @s only nitex:tech/lift

execute if entity @e[tag=nitLiftTop,distance=..2] run tag @s add nitGoingDown
execute if entity @e[tag=nitLiftBottom,distance=..2] run tag @s add nitGoingUp

tp @p[tag=nitGoingDown] ~ ~-27 ~
tp @p[tag=nitGoingUp] ~ ~27 ~

playsound minecraft:entity.minecart.riding block @p[tag=nitGoingDown] ~ ~ ~ 3 1
playsound minecraft:entity.minecart.riding block @p[tag=nitGoingUp] ~ ~ ~ 3 1

execute at @e[tag=nitLiftBottom,sort=nearest,limit=1] run tag @s[tag=nitGoingDown] remove nitGoingDown
execute at @e[tag=nitLiftTop,sort=nearest,limit=1] run tag @s[tag=nitGoingUp] remove nitGoingUp