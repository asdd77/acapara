###Looks for an existing portal, or creates a new one###
execute if entity @s[tag=nitPortalSeeking] if loaded ~ ~ ~ if loaded ~-16 ~ ~ if loaded ~ ~ ~-16 run function nitdim:portals/seek_existing

###Starts structures if the player used a Charter Book###
execute if score @s nitContract matches 17 run function nitsea:contract_test
execute if score @s nitContract matches 33 run function nitex:contract_test
execute if score @s nitContract matches 65 run function nitinv:contract_test

###Runs special magical item functions###
execute if predicate nitsea:holding_clearview run effect clear @s

###TEMPEST: Performs weather-related actions for the player###
execute if predicate nitdim:in_tempest in minecraft:overworld run weather thunder 10s
execute if entity @s[gamemode=survival] if predicate nitdim:in_hail positioned over motion_blocking if entity @s[distance=..1] run damage @s 1.0 minecraft:freeze
execute if entity @s[gamemode=survival] if predicate nitdim:in_canopy unless entity @e[tag=nitCanopyGhost,distance=..20] run summon vex ~ ~1 ~ {Tags:[smithed.entity,smithed.strict,nitCanopyGhost],CustomName:'"Canopy Ghost"'}