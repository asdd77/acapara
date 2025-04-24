###Performs item distribution###
execute if entity @s[tag=nitCaveSapper] run loot insert ~ ~ ~ loot nitex:command/cave_sapper_daily
execute if entity @s[tag=nitDinghy] run loot insert ~ ~ ~ loot nitsea:command/dinghy_daily
execute if entity @s[tag=nitDeepforge] if block ~ ~ ~-4 minecraft:lava_cauldron run function nitex:recurs/deepforge