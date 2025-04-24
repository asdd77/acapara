###Corroborates research power###
scoreboard players operation @s nitResearchPower = @e[tag=nitResearchPower,limit=1,sort=nearest] nitResearchPower

###Marks as researchable if able###
execute if predicate nitex:amethyst_shard if score @s nitResearchPower matches ..99 run tag @s add nitResearched
execute if predicate nitex:diamond if score @s nitResearchPower matches ..98 run tag @s add nitResearched
execute if predicate nitex:emerald if score @s nitResearchPower matches ..95 run tag @s add nitResearched
execute if predicate nitex:blaze_rod if score @s nitResearchPower matches ..90 run tag @s add nitResearched
execute if predicate nitex:netherite_scrap if score @s nitResearchPower matches ..80 run tag @s add nitResearched
execute if predicate nitex:blunt_artifact if score @s nitResearchPower matches ..90 run tag @s add nitResearched
execute if predicate nitex:shiny_artifact if score @s nitResearchPower matches ..80 run tag @s add nitResearched

###Adds appropriate research level###
execute if entity @s[predicate=nitex:amethyst_shard,tag=nitResearched] run scoreboard players add @s nitResearchPower 1
execute if entity @s[predicate=nitex:diamond,tag=nitResearched] run scoreboard players add @s nitResearchPower 2
execute if entity @s[predicate=nitex:emerald,tag=nitResearched] run scoreboard players add @s nitResearchPower 5
execute if entity @s[predicate=nitex:blaze_rod,tag=nitResearched] run scoreboard players add @s nitResearchPower 10
execute if entity @s[predicate=nitex:netherite_scrap,tag=nitResearched] run scoreboard players add @s nitResearchPower 20
execute if entity @s[predicate=nitex:blunt_artifact,tag=nitResearched] run scoreboard players add @s nitResearchPower 10
execute if entity @s[predicate=nitex:shiny_artifact,tag=nitResearched] run scoreboard players add @s nitResearchPower 20

###Updates research score to the research station and kills the researched item###
scoreboard players operation @e[tag=nitResearchPower,limit=1,sort=nearest] nitResearchPower = @s nitResearchPower
execute if entity @s[tag=nitResearched] run tag @e[tag=nitResearchPower,limit=1,sort=nearest] add nitUpdate
execute if entity @s[tag=nitResearched] run playsound minecraft:block.piston.extend block @a[distance=..10] ~ ~ ~ 3 0.6
execute if entity @s[tag=nitResearched] run particle poof ~ ~0.1 ~ 0.1 0.1 0.1 0.01 2 normal
kill @s[tag=nitResearched]