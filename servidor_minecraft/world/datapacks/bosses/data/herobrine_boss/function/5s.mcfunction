schedule function herobrine_boss:5s 5s

#HEROBRINE MAIN MINIONS
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_10] at @s run function summon:herobrine_boss/blaze
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_10] at @s run function summon:herobrine_boss/skeleton
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_15] at @s run function summon:herobrine_boss/zombie

#REINFORCEMENTS FOR FLYING ENTITIES
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_40] at @s run execute if entity @e[type=!player,predicate=herobrine_boss:angryat,nbt=!{OnGround:1b}] run function herobrine_boss:vex

execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_15] at @s run execute if entity @e[type=!player,predicate=herobrine_boss:angryat,nbt=!{OnGround:1b}] run function summon:herobrine_boss/blaze

#ENCHANT FLY
execute as @a[predicate=herobrine_boss:has_skull,scores={health=11..15}] at @s[predicate=herobrine_boss:chance_15] run function herobrine_boss:enchant_fly

execute unless entity @e[type=stray,tag=herobrine_boss.boss] run bossbar set herobrine_boss:boss visible false
execute if entity @e[type=stray,tag=herobrine_boss.boss] run bossbar set herobrine_boss:boss visible true