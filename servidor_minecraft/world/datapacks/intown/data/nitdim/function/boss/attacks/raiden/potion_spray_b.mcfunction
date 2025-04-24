###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 1
execute if score @s nitBossTime matches 0..29 anchored eyes positioned ^ ^ ^1.25 run function nitdim:boss/cosmetic/raiden/potion_spray

###Launch###
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:19},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:43},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:67},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:91},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:115}]} run function nitdim:boss/rotate_randomly
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:24},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:48},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:72},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:96},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:120}]} anchored eyes rotated ~ ~ positioned ^ ^ ^1.25 summon item_display run function nitdim:boss/attacks/raiden/potion_projectile_b

###Reset###
execute if score @s nitBossTime matches 120 run function nitdim:boss/attacks/reset