tag @e[tag=nitEntity] remove nitID_match
scoreboard players operation #nitID nitTemp = @e[tag=nitSFM,limit=1,sort=nearest] nitID
execute as @e[tag=nitEntity] if score @s nitID = #nitID nitTemp run tag @s add nitID_match