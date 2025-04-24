###TEMPEST: Performs actions for more unique mob spawning###
execute if entity @s[type=creeper] run data merge entity @s {powered:1b}
execute if entity @s[type=phantom,tag=!smithed.entity] run data merge entity @s {Size:16}
execute if entity @s[type=magma_cube,tag=!nitMagma] run function nitdim:tempest_slime
execute if entity @s[type=skeleton_horse,tag=!nitSafe] run function nitdim:tempest_skeleton_trap