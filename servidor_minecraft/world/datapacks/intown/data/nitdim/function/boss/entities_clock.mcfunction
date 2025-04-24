###Distributes entity-specific functions###
execute if entity @s[tag=nitRaidenSpell] run function nitdim:boss/entities/potion_projectile
execute if entity @s[tag=nitRexialSpell] run function nitdim:boss/entities/fire_projectile
execute if entity @s[tag=nitRexialCloud] run function nitdim:boss/entities/fire_cloud_behavior
execute if entity @s[tag=nitRexialMinion] run function nitdim:boss/attacks/rexial/minion_effects