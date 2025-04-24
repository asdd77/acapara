scoreboard players add @s nitResearchPower 0
setblock ~ ~-1 ~ crimson_sign{front_text:{color:"cyan",messages:['{"score":{"name":"@e[tag=nitResearchPower,limit=1,sort=nearest]","objective":"nitResearchPower"}}','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @s CustomName set from block ~ ~-1 ~ front_text.messages[0]
setblock ~ ~-1 ~ air
tag @s remove nitUpdate