###Spreads special features###
scoreboard players add @s nitSpreadLim 1
spreadplayers ~ ~ 60 180 false @e[tag=nitESpecialFeature,tag=nitID_match]

###Repeats spread if features are within 40 blocks of settler's wagon###
execute if entity @e[tag=nitESpecialFeature,distance=..60,tag=nitID_match] run function nitex:spread_features
execute if entity @s[scores={nitSpreadLim=10..}] run tellraw @s [{"text":"[回] ","color":"blue","bold":true},{"translate":"nitex.natural_features.warning","fallback":"Beware, some features may spawn very close to your mine...","color":"dark_blue"}]