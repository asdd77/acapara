###Cosmetics###
particle minecraft:large_smoke ~ ~ ~ 0.3 0.7 0.3 0.1 25 normal
playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1

###Spawn###
summon minecraft:hoglin ~ ~ ~ {CustomName:'[{"translate":"nitex.name.living_experiment","fallback":"Living Experiment"}]',Health:12.0f,PersistenceRequired:1b,Tags:[nitRexialMinion,smithed.entity,smithed.strict,nitBossEntity],attributes:[{id:"generic.max_health",base:12.0}],DeathLootTable:"minecraft:empty"}
function nitdim:boss/attacks/reset