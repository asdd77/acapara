schedule function herobrine_boss:1s 1s

execute as @e[type=stray,tag=herobrine_boss.boss,nbt=!{Fire:-1s}] at @s run data merge entity @s {Fire:-1s}
execute as @e[type=skeleton,tag=herobrine_boss.minion,predicate=!herobrine_boss:angry] at @s run execute if entity @a[team=!herobrine_boss,distance=..64,gamemode=!creative,gamemode=!spectator] run summon snowball ~ ~2.4 ~ {Tags:["herobrine_boss.trigger","smithed.entity"],Item:{id:"minecraft:warped_button",count:1}}

#HEROBRINE TELEPORT TO VEX
execute as @e[type=stray,tag=herobrine_boss.boss,predicate=herobrine_boss:chance_10] at @s run function herobrine_boss:teleport

#TEAMWORK HEROBRINE_BOSS
execute as @e[type=!vex,type=!player,team=herobrine_boss,predicate=!herobrine_boss:angry,limit=5,sort=random] at @s run execute if entity @e[type=!player,distance=..1000,predicate=herobrine_boss:angryat] run summon snowball ~ ~2.4 ~ {Tags:["herobrine_boss.help","smithed.entity"],Item:{id:"minecraft:warped_button",count:1}}
execute as @e[type=vex,team=herobrine_boss,predicate=!herobrine_boss:angry,limit=5,sort=random] at @s run execute if entity @e[type=!player,distance=..1000,tag=herobrine_boss.angryat] run summon snowball ~ ~0.8 ~ {Tags:["herobrine_boss.help_vex","smithed.entity"],Item:{id:"minecraft:warped_button",count:1}}

#SPAWN EXTRA MOB REINFORCEMENTS IF MOBS ARE USED AGAINST HEROBRINE_BOSS
execute store result score herobrine_boss.s herobrine_boss.l run execute if entity @e[tag=herobrine_boss.reinforcements]
execute store result score herobrine_boss.s herobrine_boss.m run execute if entity @e[tag=herobrine_boss.minion]
scoreboard players operation herobrine_boss.s herobrine_boss.l += herobrine_boss.s herobrine_boss.m
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run execute as @e[type=stray,tag=herobrine_boss.boss] at @s run execute at @e[team=herobrine_boss,limit=3,predicate=herobrine_boss:chance_40,sort=nearest] if entity @e[type=!player,distance=..16,predicate=herobrine_boss:angryatboss,nbt={OnGround:1b}] run function summon:herobrine_boss/extra_reinforcements

#ENCHANT FLY
execute as @a[predicate=herobrine_boss:has_skull,scores={health=6..10}] at @s[predicate=herobrine_boss:chance_15] run function herobrine_boss:enchant_fly
execute as @a[predicate=herobrine_boss:has_skull,scores={health=1..5}] at @s[predicate=herobrine_boss:chance_40] run function herobrine_boss:enchant_fly