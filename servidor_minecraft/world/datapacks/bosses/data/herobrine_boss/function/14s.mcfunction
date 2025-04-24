schedule function herobrine_boss:14s 14s

#EXTRA REINFORCEMENTS DESPAWN
execute as @e[tag=herobrine_boss.reinforcements] at @s run execute as @a[distance=..32] at @s run playsound entity.zombie.infect hostile @s
execute as @e[tag=herobrine_boss.reinforcements] at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 1 0.1 0.1 4 force
execute as @e[tag=herobrine_boss.reinforcements] at @s run function herobrine_boss:delete_current_entity