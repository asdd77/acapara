###Award advancements###
execute if entity @s[tag=nitIllGalleon] run advancement grant @a[distance=..32] only nitsea:nitsea/clear_galleon
execute if entity @s[tag=nitIllLab] run advancement grant @a[distance=..32] only nitsea:nitsea/clear_lab
execute if entity @s[tag=nitIllCastle] run advancement grant @a[distance=..32] only nitsea:nitsea/clear_castle

###Cleanup###
tag @s add nitCleared