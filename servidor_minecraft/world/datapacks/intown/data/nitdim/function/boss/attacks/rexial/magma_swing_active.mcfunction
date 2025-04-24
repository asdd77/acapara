###Movement###
data modify entity @s NoAI set value 1b
scoreboard players add @s nitTemp 0
tp @s ~ ~ ~ ~9 0

###Attack###
execute at @s rotated ~ 0 positioned ^ ^0.75 ^0.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^1.0 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^1.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^2.0 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^2.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^3.0 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^3.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^4.0 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^4.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^5.0 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^5.5 run function nitdim:boss/attacks/rexial/magma_swing_step
execute at @s rotated ~ 0 positioned ^ ^0.75 ^6.0 run function nitdim:boss/attacks/rexial/magma_swing_step

###Terminate###
execute if score @s nitTemp matches 39.. run function nitdim:boss/attacks/reset
scoreboard players add @s nitTemp 1