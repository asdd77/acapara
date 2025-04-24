advancement revoke @s only nitinv:lift/lift_down
execute positioned ~ ~-15 ~ at @e[tag=nitinvLift,limit=1,sort=nearest,distance=..10] rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @s run playsound block.enchantment_table.use block @a ~ ~ ~ 1 1.5
execute at @s run particle glow ~ ~1 ~ 0.3 0.5 0.3 0.05 10 normal