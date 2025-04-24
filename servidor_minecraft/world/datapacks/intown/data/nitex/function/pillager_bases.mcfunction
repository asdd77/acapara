###Trigger attack if it's your turn###
function nitdim:id_match_self
execute if entity @s[scores={nitShaftCraft=5..},tag=nitPiglinCave] run tag @s add nitAttackTrigger
execute if entity @s[scores={nitShaftCraft=7..},tag=nitIllArena] unless entity @e[tag=nitPiglinCave,tag=nitID_match,tag=!nitCleared] run tag @s add nitAttackTrigger
execute if entity @s[scores={nitShaftCraft=9..},tag=nitIllPyramid] unless entity @e[tag=nitIllArena,tag=nitID_match,tag=!nitCleared] run tag @s add nitAttackTrigger

###Move if there's a site too close###
scoreboard players set @s nitSpreadLim 0
execute if entity @s[tag=nitAttackTrigger] at @s positioned ~-16 ~ ~-16 if entity @e[tag=nitBaseAvoid,dx=32,dz=32,y=0,dy=128] run function nitex:spread_features_2


###Piglin Cave on 5th structure###
tag @s[tag=nitAttackTrigger,tag=nitPiglinCave] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitPiglinCave,tag=!nitGenerated] run summon lightning_bolt ~ 256 ~
execute if entity @s[tag=nitAttackTrigger,tag=nitPiglinCave,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.illager_attack.piglin_cave.desc","fallback":"The Illager's Piglin Cave has been discovered!","color":"white","bold":false}]


###Illager Arena on 7th structure###
tag @s[tag=nitAttackTrigger,tag=nitIllArena] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitIllArena,tag=!nitGenerated] run summon lightning_bolt ~ 256 ~
execute if entity @s[tag=nitAttackTrigger,tag=nitIllArena,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.illager_attack.illager_arena.desc","fallback":"The Illager's Arena has been discovered!","color":"white","bold":false}]


###Inverted Pyramid on 9th structure###
tag @s[tag=nitAttackTrigger,tag=nitIllPyramid] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitIllPyramid,tag=!nitGenerated] run summon lightning_bolt ~ 256 ~
execute if entity @s[tag=nitAttackTrigger,tag=nitIllPyramid,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.illager_attack.pyramid.desc","fallback":"The Inverted Pyramid has been discovered!","color":"white","bold":false}]