###Spawns the Galleon###
tp @s ~ 47 ~
execute at @s run place template nitsea:illagers/galleon ~-10 ~-1 ~-24

###Clears Sponges###
schedule function nitsea:special/clear_sponge_delay 35t

###Cleanup###
tag @s add nitGenerated