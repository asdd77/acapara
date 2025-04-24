###Windup###
execute if score @s nitBossTime matches 0 run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1
execute if score @s nitBossTime matches 0..29 anchored eyes positioned ^ ^ ^1.25 run function nitdim:boss/cosmetic/rexial/flame_spray

###Launch###
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:25},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:55},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:85},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:115}]} run function nitdim:boss/rotate_randomly
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:30},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:60},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:90},{condition:"minecraft:value_check",value:{type:"minecraft:score",score:"nitBossTime",target:"this"},range:120}]} anchored eyes rotated ~ ~ positioned ^ ^ ^1.25 summon item_display run function nitdim:boss/attacks/rexial/flame_projectile_a

###Reset###
execute if score @s nitBossTime matches 120 run function nitdim:boss/attacks/reset