###Cosmetics###
particle minecraft:poof ~ ~ ~ 0.3 0.7 0.3 0.1 25 normal
playsound entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 1

###Spawn###
summon minecraft:drowned ~ ~ ~ {CustomName:'[{"translate":"nitsea.name.undead_experiment","fallback":"Undead Experiment"}]',Health:17.0,PersistenceRequired:1b,Tags:[smithed.entity,smithed.strict,nitBossEntity],attributes:[{id:"generic.max_health",base:17.0F},{id:"minecraft:generic.attack_damage",base:12.0}],DeathLootTable:"minecraft:empty",HandItems:[{id:"minecraft:trident",count:1},{}],HandDropChances:[0.0f,0.0f]}
function nitdim:boss/attacks/reset