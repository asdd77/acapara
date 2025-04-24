###Summons replacement zombie Rexial###
data modify entity @s Health set value 101
summon minecraft:zombie_villager ~ ~ ~ {VillagerData:{type:plains,profession:weaponsmith,level:5},CustomName:'[{"translate":"nitex.name.rexial","fallback":"Rexial the Soulless"}]',Health:101,Tags:[nitEntity,nitTicking,nitRexialBoss,nitRevived,smithed.entity,smithed.strict,nitBoss],HandItems:[{id:netherite_axe,count:1},{}],attributes:[{id:"generic.attack_damage",base:9f},{id:"generic.movement_speed",base:0.35f},{id:"generic.max_health",base:200F}],HandDropChances:[0F,0F],DeathLootTable:"nitex:entities/rexial"}
scoreboard players operation @e[tag=nitRexialBoss,tag=nitRevived,limit=1,distance=..1] nitResourceSpawn = @s nitResourceSpawn

tp @s ~ -200 ~
kill @s