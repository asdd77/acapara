###Establishes accurate link###
execute if predicate nitdim:in_overworld run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBetween
execute if predicate nitdim:in_buried_ocean run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBetween
execute if predicate nitdim:in_primordial_desert run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBetween
execute if predicate nitdim:in_tempest run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBetween

execute if predicate nitdim:in_between if entity @s[tag=nitFromOverworld] run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkOverworld
execute if predicate nitdim:in_between if entity @s[tag=nitFromBuriedOcean] run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBuriedOcean
execute if predicate nitdim:in_between if entity @s[tag=nitFromPrimordialDesert] run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkPrimordialDesert
execute if predicate nitdim:in_between if entity @s[tag=nitFromTempest] run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkTempest

###Enables travel for the player again###
gamemode survival @s
tag @s remove nitPortalConfirm
tag @s remove nitPortalTravel
tag @s remove nitFromOverworld
tag @s remove nitFromBuriedOcean
tag @s remove nitFromPrimordialDesert
tag @s remove nitFromTempest
effect clear @s slowness
effect clear @s blindness
advancement revoke @s only nitdim:tech/to_between
advancement revoke @s only nitdim:tech/from_between
advancement grant @s only nitdim:tutorial/use_portal

###Re-tries for Tempest portals###
execute if entity @s[predicate=nitdim:in_tempest] run tag @e[tag=nitPortal,limit=1,sort=nearest] add nitLinkBetween
execute if entity @s[predicate=nitdim:in_tempest] run tag @e[tag=nitPortal,limit=1,sort=nearest] remove nitLinkTempest