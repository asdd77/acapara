###Base Objectives###
execute if entity @s[tag=nitBaseObjective] run function nitdim:illagers/objective

###Seafarers Clear Status###
execute if entity @s[tag=nitSSpecialFeature,tag=nitGenerated,tag=!nitCleared] unless entity @e[tag=nitIllagerEntity,tag=nitBaseObjective,distance=..40] run function nitsea:illagers/clear

###Excavators Clear Status###
execute if entity @s[tag=nitESpecialFeature,tag=nitGenerated,tag=!nitCleared] unless entity @e[tag=nitIllagerEntity,tag=nitBaseObjective,distance=..40] run function nitex:illagers/clear
