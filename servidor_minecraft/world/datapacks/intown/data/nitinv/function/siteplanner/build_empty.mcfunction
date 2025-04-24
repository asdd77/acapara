###RNG###
execute store result score @s nitRandom run random value 0..4

###Place with random rotation
execute if score @s nitRandom matches 0 run place template nitinv:tower/empty ~-8 ~10 ~-12

execute if score @s nitRandom matches 1 run place template nitinv:tower/empty ~12 ~10 ~-8 clockwise_90

execute if score @s nitRandom matches 2 run place template nitinv:tower/empty ~8 ~10 ~12 180

execute if score @s nitRandom matches 3 run place template nitinv:tower/empty ~-12 ~10 ~8 counterclockwise_90

function nitinv:siteplanner/cleanup