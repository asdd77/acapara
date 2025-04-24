tag @s add nitAttacking
tag @s remove nitBossAttack
execute store result score @s nitAttack run random value 1..3

scoreboard players reset @s nitBossTime