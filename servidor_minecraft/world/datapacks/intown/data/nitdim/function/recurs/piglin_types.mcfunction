###Defines Piglin's Dimension###
execute if predicate nitdim:not_nitdim run scoreboard players set @s nitDimension 0
execute if predicate nitdim:in_primordial_desert run scoreboard players set @s nitDimension 1

###Define's Piglin's profession###
execute if predicate nitdim:piglin_types/none run scoreboard players set @s nitPiglinType 0
execute if predicate nitdim:piglin_types/carver run scoreboard players set @s nitPiglinType 1
execute if predicate nitdim:piglin_types/cook run scoreboard players set @s nitPiglinType 2
execute if predicate nitdim:piglin_types/goldsmith run scoreboard players set @s nitPiglinType 3
execute if predicate nitdim:piglin_types/guard run scoreboard players set @s nitPiglinType 4
execute if predicate nitdim:piglin_types/miner run scoreboard players set @s nitPiglinType 5
execute if predicate nitdim:piglin_types/priest run scoreboard players set @s nitPiglinType 6
execute if predicate nitdim:piglin_types/storyteller run scoreboard players set @s nitPiglinType 7