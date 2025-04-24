###Find matching attack entities###
function nitdim:id_match_first_mate

###Increment Attacks###
execute if entity @s[tag=nitSFM,tag=nitID_match] run scoreboard players add @s nitShipCraft 1
execute if entity @s[tag=nitPirateMarker,tag=nitID_match] run scoreboard players add @s nitShipCraft 1
execute if entity @s[tag=nitSSpecialFeature,tag=nitID_match] run scoreboard players add @s nitShipCraft 1