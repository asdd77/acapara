###Cosmetics###
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1

###Summon AOE Cloud###
execute if entity @s[tag=!nitBigSpell] summon minecraft:area_effect_cloud run function nitdim:boss/entities/potion_cloud_a
execute if entity @s[tag=nitBigSpell] summon minecraft:area_effect_cloud run function nitdim:boss/entities/potion_cloud_b
kill @s