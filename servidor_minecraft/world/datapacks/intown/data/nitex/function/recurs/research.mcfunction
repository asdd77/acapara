###Researches items###
execute as @e[predicate=nitex:researchable,limit=1,distance=..1.5,tag=!nitResearched] run function nitex:recurs/research_check

###Performs completed research###
execute if entity @s[scores={nitResearchPower=100..}] run function nitex:recurs/research_complete

###Updates score display###
execute if entity @s[tag=nitUpdate] run function nitex:recurs/research_update