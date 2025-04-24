###Restores Artifact site###
execute if entity @s[tag=nitArtifactOasis] run place template nitex:artifact/oasis_new ~-7 ~-3 ~-7
execute if entity @s[tag=nitArtifactGlass] run place template nitex:artifact/glass_new ~-7 ~-3 ~-7
execute if entity @s[tag=nitArtifactCactus] run place template nitex:artifact/cactus_new ~-7 ~-3 ~-7
execute if entity @s[tag=nitArtifactObsidian] run place template nitex:artifact/obsidian_new ~-7 ~-3 ~-7

###Kills artifact entity###
kill @s