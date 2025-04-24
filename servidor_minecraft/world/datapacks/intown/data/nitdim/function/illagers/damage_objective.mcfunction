###Cosmetics###
execute facing entity @p[advancements={nitdim:tech/hurt_objective=true}] eyes run function nitdim:illagers/cosmetic/damage_objective
scoreboard players set @s nitTemp 25

###Spawn chance###
execute if predicate nitdim:chance_30 facing entity @p feet rotated ~ 0 run function nitdim:illagers/reinforcements