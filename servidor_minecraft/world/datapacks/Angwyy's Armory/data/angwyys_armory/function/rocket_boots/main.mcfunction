
execute as @s[tag=in_air,scores={rocket_fuel=1..}] if predicate angwyys_armory:sneaking run function angwyys_armory:rocket_boots/fly
execute as @s[scores={display_priority=3}] run function angwyys_armory:rocket_boots/gui

