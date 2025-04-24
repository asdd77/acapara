particle crit ^ ^0.5 ^2.2 0.15 0.15 0.15 0.05 10 normal
particle damage_indicator ^ ^0.5 ^2.2 0.15 0.15 0.15 0.01 5 normal

execute if entity @s[tag=nitObjectiveShip] run playsound entity.iron_golem.hurt block @a ~ ~ ~ 1 0.8
execute if entity @s[tag=nitObjectiveLightning] run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0.8
execute if entity @s[tag=nitObjectiveTestTube] run playsound block.glass.break block @a ~ ~ ~ 1 0.8
execute if entity @s[tag=nitObjectiveCage] run playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 1.2
execute if entity @s[tag=nitObjectiveResearch] run playsound entity.villager.work_fletcher block @a ~ ~ ~ 1 0.7
execute if entity @s[tag=nitObjectiveImmortality] run playsound entity.iron_golem.hurt block @a ~ ~ ~ 2 0.8