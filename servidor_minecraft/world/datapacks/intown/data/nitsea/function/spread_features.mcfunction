###Spreads special features###
spreadplayers ~ ~ 80 140 false @e[tag=nitSSpecialFeature,tag=nitID_match]

###Repeats spread if features are within 100 blocks of ship###
execute if entity @e[tag=nitSSpecialFeature,tag=!nitIllPirates,distance=..100,tag=nitID_match] run function nitsea:spread_features