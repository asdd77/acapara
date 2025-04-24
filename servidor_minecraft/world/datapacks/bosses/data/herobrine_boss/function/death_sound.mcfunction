execute as @a at @s run playsound entity.ender_dragon.growl ambient @s
execute as @e[team=herobrine_boss] at @s run function herobrine_boss:delete_current_entity
bossbar set herobrine_boss:boss visible false
kill @s