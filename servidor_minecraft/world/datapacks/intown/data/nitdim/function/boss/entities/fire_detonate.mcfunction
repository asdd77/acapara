###Cosmetics###
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
particle flame ~ ~ ~ 0.3 0.3 0.3 0.05 10 normal
particle smoke ~ ~0.2 ~ 0.2 0.45 0.2 0.01 20 normal
particle lava ~ ~ ~ 0.3 0.3 0.3 0 5 normal
particle explosion ~ ~ ~ 0 0 0 0 1 normal

###Summon AOE Cloud###
execute if entity @s[tag=!nitBigSpell] summon minecraft:area_effect_cloud run function nitdim:boss/entities/fire_cloud_a
execute if entity @s[tag=nitBigSpell] summon minecraft:area_effect_cloud run function nitdim:boss/entities/fire_cloud_b
kill @s