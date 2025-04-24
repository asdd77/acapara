#NO NEED OF EXECUTE
function herobrine_boss:alt/tnt/2
summon area_effect_cloud ~ ~ ~ {Radius:5f,Duration:20,potion_contents:{potion:"minecraft:harming"},CustomName:'{"bold":true,"color":"dark_red","text":"Herobrine Minion"}'}
kill @s[type=!player]