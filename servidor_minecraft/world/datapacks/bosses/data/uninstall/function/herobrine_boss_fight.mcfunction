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
tellraw @s [{"text": "[","color": "gray"},{"text": "Herobrine Boss Fight","color": "light_purple","hoverEvent": {"action": "show_text","value": "Visit Website"},"clickEvent": {"action": "open_url","value": "https://www.planetminecraft.com/data-pack/herobrine-boss-1-16-by-sameer-99/"}},{"text": "]","color": "gray"},{"text": " This datapack will be uninstalled.","color":"white"}]
tellraw @s ""
tellraw @s [{"text": ">>  ","color": "dark_gray"},{"text": "Confirm","color": "green","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function herobrine_boss:destroy_datapack/initial"}}]
tellraw @s ""
tellraw @s [{"text": ">>  ","color": "dark_gray"},{"text": "Cancel","color": "red","bold": true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function herobrine_boss:destroy_datapack/cancel"}}]
tellraw @s ""
tellraw @s "-------------------------"
gamerule sendCommandFeedback false
schedule function herobrine_boss:output 1t