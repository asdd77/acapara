execute as @a store result score @s motionY run data get entity @s Motion[1] 10

execute as @a run attribute @s minecraft:generic.gravity modifier remove rocket_boots

execute as @a run attribute @s generic.jump_strength modifier remove slime_boots
execute as @a run attribute @s minecraft:generic.fall_damage_multiplier modifier remove slime_boots

execute as @a[nbt={OnGround:true}] run function angwyys_armory:touched_ground

scoreboard players remove @a[scores={double_jump=1..}] double_jump 1
execute as @a run attribute @s[scores={double_jump=..1}] minecraft:generic.gravity modifier remove double_jump

tag @a remove in_air
execute as @a[nbt={OnGround:false}] run function angwyys_armory:in_air

execute as @a at @s if items entity @s armor.feet leather_boots[minecraft:custom_data={windy_boots:true}] run function angwyys_armory:feather_boots/main
execute as @a at @s if items entity @s armor.feet leather_boots[minecraft:custom_data={slime_boots:true}] run function angwyys_armory:slime_boots/main

scoreboard players set @a[scores={groundtime=5..}] fall_distance 0

scoreboard players set @a[scores={jumped=1..}] fall_distance 0
scoreboard players set @a[scores={jumped=1..}] jumped 0

scoreboard players remove @a dash_cooldown 175

execute as @a at @s if items entity @s armor.head leather_helmet[minecraft:custom_data={shadow_hood:true}] run function angwyys_armory:shadow_hood/main
scoreboard players set @a[predicate=!angwyys_armory:sneaking] sneaktime 0

scoreboard players remove @a dashtime 1
execute as @a[scores={dashtime=..0}] run attribute @s generic.movement_speed modifier remove dash

execute as @a at @s if items entity @s armor.feet leather_boots[minecraft:custom_data={rocket_boots:true}] run function angwyys_armory:rocket_boots/main

scoreboard players add @a[tag=!no_rocket_recharge] rocket_fuel 7
scoreboard players set @a[scores={rocket_fuel=600..}] rocket_fuel 600