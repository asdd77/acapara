execute as @e[type=stray,tag=herobrine_boss.boss] at @s run summon armor_stand ^ ^2 ^ {Marker:1b,Tags:["herobrine_boss.vex_spawn"]}
execute as @e[type=stray,tag=herobrine_boss.boss] at @s run summon armor_stand ^1 ^1.5 ^ {Marker:1b,Tags:["herobrine_boss.vex_spawn"]}
execute as @e[type=stray,tag=herobrine_boss.boss] at @s run summon armor_stand ^-1 ^1.5 ^ {Marker:1b,Tags:["herobrine_boss.vex_spawn"]}
execute as @e[type=armor_stand,tag=herobrine_boss.vex_spawn] at @s run function summon:herobrine_boss/vex
execute as @e[type=armor_stand,tag=herobrine_boss.vex_spawn] at @s run function herobrine_boss:delete_current_entity
execute as @e[type=stray,tag=herobrine_boss.boss] at @s run execute as @a[distance=..32] at @s run playsound entity.evoker.prepare_summon hostile @s