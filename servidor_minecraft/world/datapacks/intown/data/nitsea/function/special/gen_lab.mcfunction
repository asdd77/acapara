###Spawn Lab###
tp @s ~ 31 ~
execute at @s run place template nitsea:illagers/lab ~-10 ~-12 ~-10

###Clears Sponges###
schedule function nitsea:special/clear_sponge_delay 35t

###Cleanup###
tag @s add nitGenerated