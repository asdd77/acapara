execute if predicate nitdim:on_ground store result score @e[tag=nitBaseObjective,limit=1,sort=nearest] nitDamage run attribute @s generic.attack_damage get 1
execute unless predicate nitdim:on_ground store result score @e[tag=nitBaseObjective,limit=1,sort=nearest] nitDamage run attribute @s generic.attack_damage get 1.25
execute unless predicate nitdim:on_ground run playsound entity.player.attack.strong player @a ~ ~ ~ 1 1
execute as @e[tag=nitBaseObjective,limit=1,sort=nearest] at @s run function nitdim:illagers/damage_objective
advancement revoke @s only nitdim:tech/hurt_objective