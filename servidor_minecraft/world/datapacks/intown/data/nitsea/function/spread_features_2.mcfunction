###Spreads special features###
spreadplayers ~ ~ 100 200 false @s

###Repeats spread if feature is within 40 blocks of a site planner###
execute at @s if entity @e[tag=nitBaseAvoid,dx=40,dz=40,y=0,dy=128] run execute at @e[tag=nitSFM] run function nitsea:spread_features_2