###Anounces daily resources###
tellraw @s[tag=nitInform,tag=nitSeafarer] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.resources.inform","fallback":"Resources have been transported to your ship's hoppers, captain.","color":"white","bold":false}]
tellraw @s[tag=nitInform,tag=nitExcavator] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.resources.inform","fallback":"Resources have been transported to your mine's hoppers.","color":"white","bold":false}]

###Portal Fix Trigger###
scoreboard players enable @s nitFixPortal
execute if score @s nitFixPortal matches 1 run function nitdim:portals/fix_portal
execute if score @s nitFixPortal matches 3 run function nitdim:portals/select/overworld
execute if score @s nitFixPortal matches 4 run function nitdim:portals/select/in_between
execute if score @s nitFixPortal matches 5 run function nitdim:portals/select/buried_ocean
execute if score @s nitFixPortal matches 6 run function nitdim:portals/select/primordial_desert
execute if score @s nitFixPortal matches 7 run function nitdim:portals/select/tempest

###Lift Controls display###
execute if entity @e[tag=nitinvLift,distance=..0.2] at @s anchored eyes rotated ~ 0 run function nitinv:recurs/lift/displays