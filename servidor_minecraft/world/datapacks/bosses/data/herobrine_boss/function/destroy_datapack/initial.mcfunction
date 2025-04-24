schedule clear herobrine_boss:1t
schedule clear herobrine_boss:1s
schedule clear herobrine_boss:5s
schedule clear herobrine_boss:14s
schedule clear herobrine_boss:18s
schedule clear herobrine_boss:20s
execute as @e[team=herobrine_boss] at @s run function herobrine_boss:delete_current_entity
team remove herobrine_boss
bossbar remove herobrine_boss:boss
scoreboard objectives remove herobrine_boss.n
scoreboard objectives remove herobrine_boss.l
scoreboard objectives remove herobrine_boss.t
scoreboard objectives remove herobrine_boss.m
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "-------------------------"
tellraw @s ""
tellraw @s [{"text": "[","color": "gray"},{"text": "Herobrine Boss Fight","color": "light_purple","hoverEvent": {"action": "show_text","value": "Visit Website"},"clickEvent": {"action": "open_url","value": "https://www.planetminecraft.com/data-pack/herobrine-boss-1-16-by-sameer-99/"}},{"text": "]","color": "gray"},{"text": " Disabling datapack... Output will not be displayed!","color":"white"}]
tellraw @s ""
tellraw @s "-------------------------"
gamerule sendCommandFeedback false
schedule function herobrine_boss:output 1t
schedule function herobrine_boss:destroy_datapack/final 1s