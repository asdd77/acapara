###Award advancements###
execute if entity @s[tag=nitPiglinCave] run advancement grant @a[distance=..32] only nitex:nitex/clear_piglin_cave
execute if entity @s[tag=nitIllArena] run advancement grant @a[distance=..32] only nitex:nitex/clear_illager_arena
execute if entity @s[tag=nitIllPyramid] run advancement grant @a[distance=..32] only nitex:nitex/clear_pyramid

###Cleanup###
tag @s add nitCleared