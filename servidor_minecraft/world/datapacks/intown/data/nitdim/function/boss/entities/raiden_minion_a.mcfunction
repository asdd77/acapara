###Cosmetics###
particle minecraft:poof ~ ~ ~ 0.3 0.7 0.3 0.1 25 normal
playsound entity.zombie.converted_to_drowned hostile @a ~ ~ ~ 1 1

###Spawn###
summon minecraft:drowned ~ ~ ~ {CustomName:'[{"translate":"nitsea.name.undead_experiment","fallback":"Undead Experiment"}]',Health:12.0,PersistenceRequired:1b,Tags:[smithed.entity,smithed.strict,nitBossEntity],attributes:[{id:"generic.max_health",base:12.0F},{id:"minecraft:generic.attack_damage",base:7.0}],DeathLootTable:"minecraft:empty"}
function nitdim:boss/attacks/reset