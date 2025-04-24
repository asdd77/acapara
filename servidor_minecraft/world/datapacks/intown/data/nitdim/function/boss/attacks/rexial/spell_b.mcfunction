data modify entity @s Invulnerable set value 1b
playsound minecraft:block.fire.extinguish hostile @a[distance=..20] ~ ~ ~ 3 1
playsound minecraft:block.fire.extinguish hostile @a[distance=..20] ~ ~ ~ 3 1
summon minecraft:marker ~ ~2 ~ {Tags:[nitEntity,nitTicking,nitRexialSpell,nitBigSpell,smithed.entity,smithed.strict,nitBossEntity]}
summon minecraft:marker ~ ~1 ~ {Tags:[nitEntity,nitTicking,nitRexialSpell,nitBigSpell,smithed.entity,smithed.strict,nitBossEntity]}
function nitdim:boss/attacks/reset