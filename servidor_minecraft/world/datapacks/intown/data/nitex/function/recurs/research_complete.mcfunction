function nitdim:id_match_mine_foreman
execute as @e[tag=nitArtifactSite,tag=nitID_match,limit=1,sort=random] at @s run function nitex:recurs/artifact_restore
scoreboard players set @s nitResearchPower 0

###Cosmetics###
particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:block.beacon.power_select block @a[distance=..20] ~ ~ ~ 1