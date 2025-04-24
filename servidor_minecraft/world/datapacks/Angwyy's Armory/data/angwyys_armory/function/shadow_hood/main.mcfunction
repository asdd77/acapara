execute if predicate angwyys_armory:sneaking run scoreboard players add @s sneaktime 1
execute unless predicate angwyys_armory:sneaking as @s[scores={sneaktime=1..10,dash_cooldown=..0},nbt={OnGround:true}] run function angwyys_armory:shadow_hood/dash

execute as @s[scores={display_priority=1}] run function angwyys_armory:shadow_hood/gui
function angwyys_armory:shadow_hood/particles