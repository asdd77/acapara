playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1
data merge entity @s {Tags:[nitEntity,nitTicking,nitBossEntity,nitRexialSpell,nitBigSpell,smithed.entity,smithed.strict],Glowing:1b,item:{id:"minecraft:fire_charge",count:1},brightness:{block:15,sky:15},glow_color_override:13902595,teleport_duration:1,billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.75f,1.75f,1.75f],right_rotation:[0f,0f,0f,1f]}}
tp @s ~ ~ ~ ~ 30
execute if predicate nitdim:chance_50 run tp @s ~ ~ ~ ~ 45