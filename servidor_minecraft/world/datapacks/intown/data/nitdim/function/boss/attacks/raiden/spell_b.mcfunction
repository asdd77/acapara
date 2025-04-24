data modify entity @s Invulnerable set value 1b
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..20] ~ ~ ~ 3 1
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..20] ~ ~ ~ 3 1
summon minecraft:marker ~ ~2 ~ {Tags:[nitEntity,nitTicking,nitRaidenSpell,nitBigSpell,smithed.entity,smithed.strict,nitBossEntity]}
summon minecraft:marker ~ ~1 ~ {Tags:[nitEntity,nitTicking,nitRaidenSpell,nitBigSpell,smithed.entity,smithed.strict,nitBossEntity]}
function nitdim:boss/attacks/reset