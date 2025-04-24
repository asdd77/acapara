###Cosmetics###
particle minecraft:large_smoke ~ ~ ~ 0.3 0.7 0.3 0.1 25 normal
playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1

###Spawn###
summon minecraft:zoglin ~ ~ ~ {CustomName:'[{"translate":"nitsea.name.undead_experiment","fallback":"Undead Experiment"}]',Health:18.0f,PersistenceRequired:1b,Tags:[nitRexialMinion,smithed.entity,smithed.strict,nitBossEntity],attributes:[{id:"generic.max_health",base:18.0},{id:"generic.movement_speed",base:0.3}],DeathLootTable:"minecraft:empty"}
function nitdim:boss/attacks/reset