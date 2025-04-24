###General Behavior###
scoreboard players add @s nitResourceTime 0
scoreboard players add @s nitBossTime 0
scoreboard players add @s nitInvulTime 0
effect clear @s slowness
effect clear @s poison
effect clear @s wither

###Bossbar Display###
execute store result score @s nitBossHealth run data get entity @s Health
execute store result bossbar nitdim:raiden value run data get entity @s Health

###Handles vulnerability###
execute if entity @s[nbt={Invulnerable:1b}] if predicate nitdim:boss/vulnerable_chance run function nitdim:boss/raiden/vulnerable
execute if entity @s[nbt={Invulnerable:0b}] if predicate nitdim:boss/immune_chance run function nitdim:boss/raiden/immune

###Changes behavior when above/below half health###
execute if score @s nitBossHealth matches 101.. run function nitdim:boss/raiden/phase_1
execute if score @s nitBossHealth matches ..100 run function nitdim:boss/raiden/phase_2
execute if score @s nitBossTime matches 300.. run function nitdim:boss/attacks/reset

###Grants boss one revival when killed, restored to just above half health###
execute if score @s[tag=!nitRevived] nitBossHealth matches ..20 unless predicate nitdim:boss/holding_totem run function nitdim:boss/raiden/revive

###Chat Lines###
execute if score @s nitResourceTime matches 200..300 if predicate nitdim:chance_1 run function nitdim:boss/chat/raiden
execute if score @s nitResourceTime matches 301.. run function nitdim:boss/chat/raiden

###Increment Scores###
scoreboard players add @s nitResourceTime 1
scoreboard players add @s nitBossTime 1
scoreboard players add @s nitInvulTime 1