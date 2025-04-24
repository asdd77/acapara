scoreboard players add @s nitResearchPower 0
scoreboard players operation @s[tag=!nitinvPowerPrime] nitResearchPower = @e[tag=nitinvPowerPrime,limit=1,sort=nearest] nitResearchPower
data modify entity @s text set value '{"score":{"name":"@s","objective":"nitResearchPower"}}'