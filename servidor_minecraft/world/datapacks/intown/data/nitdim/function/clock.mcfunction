###Searches for all entitites to attempt to run the appropriate tick and location-based functions###
execute as @a at @s run function nitdim:clock_players
execute as @e[tag=nitTicking] at @s run function nitdim:clock_locations