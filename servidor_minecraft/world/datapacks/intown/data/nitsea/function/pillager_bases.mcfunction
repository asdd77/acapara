###Trigger attack if it's your turn###
function nitdim:id_match_self
scoreboard players add @s[tag=nitIllPirates] nitResourceTime 0
execute if entity @s[scores={nitShipCraft=1..,nitResourceTime=..2},tag=nitIllPirates] run tag @s add nitAttackTrigger
execute if entity @s[scores={nitShipCraft=5..},tag=nitIllGalleon] unless entity @e[tag=nitIllPirates,tag=nitID_match,tag=!nitCleared] run tag @s add nitAttackTrigger
execute if entity @s[scores={nitShipCraft=7..},tag=nitIllLab] unless entity @e[tag=nitIllGalleon,tag=nitID_match,tag=!nitCleared] run tag @s add nitAttackTrigger
execute if entity @s[scores={nitShipCraft=9..},tag=nitIllCastle] unless entity @e[tag=nitIllLab,tag=nitID_match,tag=!nitCleared] run tag @s add nitAttackTrigger

###Move if there's a site too close###
scoreboard players set @s nitSpreadLim 0
execute if entity @s[tag=nitAttackTrigger,tag=!nitIllPirates] at @s positioned ~-16 ~ ~-16 if entity @e[tag=nitBaseAvoid,dx=40,dz=40,y=0,dy=128] run function nitsea:spread_features_2


###Pirate Attacks on 1st, 2nd, and 3rd structures###
scoreboard players add @s[tag=nitAttackTrigger,tag=nitIllPirates] nitResourceTime 1
execute if entity @s[tag=nitAttackTrigger,tag=nitIllPirates] run tellraw @a[distance=..100] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.illager_attack.pirates","fallback":"Pirates have boarded your fleet!","color":"white","bold":false}]
execute if entity @s[tag=nitAttackTrigger,tag=nitIllPirates] as @e[tag=nitPirateMarker] at @s run function nitsea:siteplanner/pillager_attack
execute if entity @s[tag=nitAttackTrigger,tag=nitIllPirates] if score @s nitResourceTime matches 3 run tag @s add nitCleared
tag @s[tag=nitAttackTrigger,tag=nitIllPirates] remove nitAttackTrigger


###Illager Galleon on 5th structure###
tag @s[tag=nitAttackTrigger,tag=nitIllGalleon] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitIllGalleon,tag=!nitGenerated] positioned over motion_blocking run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=nitAttackTrigger,tag=nitIllGalleon,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.illager_attack.galleon","fallback":"The Illager Galleon has appeared!","color":"white","bold":false}]


###Illager Lab on 7th structure###
tag @s[tag=nitAttackTrigger,tag=nitIllLab] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitIllLab,tag=!nitGenerated] positioned over motion_blocking run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=nitAttackTrigger,tag=nitIllLab,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.illager_attack.lab","fallback":"The Illager's Lab has been discovered!","color":"white","bold":false}]


###Suspended Castle on 9th structure###
tag @s[tag=nitAttackTrigger,tag=nitIllCastle] add nitPrepared
execute if entity @s[tag=nitAttackTrigger,tag=nitIllCastle,tag=!nitGenerated] positioned over motion_blocking run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=nitAttackTrigger,tag=nitIllCastle,tag=!nitGenerated] run tellraw @a[distance=..200] [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitsea.illager_attack.castle","fallback":"The Suspended Castle has been discovered!","color":"white","bold":false}]