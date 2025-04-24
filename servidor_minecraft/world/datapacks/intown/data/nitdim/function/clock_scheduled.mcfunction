###SEAFARERS: Runs functions for some fleet features###
execute if entity @s[tag=nitWarship] run effect give @e[type=#nitsea:warship_mobs,distance=..100] minecraft:weakness 2 0

###EXCAVATORS: Runs functions for some mine structures###
execute if entity @s[tag=nitResearchPower] run function nitex:recurs/research
execute if entity @s[tag=nitHeadlamp] run function nitex:recurs/headlamp
execute if entity @s[tag=nitSurveyMarker] run function nitex:recurs/surveyor

###Handles Naturally Generated Features building when loaded###
execute if entity @s[tag=nitSSpecialFeature,tag=nitPrepared,tag=!nitGenerated] run function nitsea:special/generate
execute if entity @s[tag=nitESpecialFeature,tag=nitPrepared,tag=!nitGenerated] run function nitex:special/generate

###Handles dimensional location-based behaviors###
execute if entity @s[tag=nitObeliskPrisoner] if predicate nitdim:in_primordial_desert run function nitdim:obelisk_prisoner