execute if entity @s[tag=nitObjectiveShip,predicate=nitdim:in_buried_ocean] run function nitdim:illagers/spawns/ship
execute if entity @s[tag=nitObjectiveLightning] run function nitdim:illagers/spawns/lightning
execute if entity @s[tag=nitObjectiveTestTube] run function nitdim:illagers/spawns/test_tube
execute if entity @s[tag=nitObjectiveCage] run function nitdim:illagers/spawns/cage
execute if entity @s[tag=nitObjectiveResearch] run function nitdim:illagers/spawns/research
execute if entity @s[tag=nitObjectiveImmortality] run function nitdim:illagers/spawns/immortality
scoreboard players reset @s nitResourceTime