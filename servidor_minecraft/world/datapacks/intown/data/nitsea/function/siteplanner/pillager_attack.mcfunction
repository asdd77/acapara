###Increments ship count and grants advancement###
advancement grant @a[distance=..50] only nitsea:nitsea/pirates

###Decides pirate type semi-randomly###
execute store result score @s nitPirateType run random value 0..15

###Summons appropriate pirates or pirate captains###
execute if score @s nitPirateType matches 0..1 run function nitsea:illagers/spawns/pirate_captain
execute if score @s nitPirateType matches 2..9 run function nitsea:illagers/spawns/pirate_sword
execute if score @s nitPirateType matches 10..15 run function nitsea:illagers/spawns/pirate_bow
effect give @e[tag=nitPirate,limit=1,sort=nearest,distance=..1] glowing infinite 0

###Announces the attack###
execute at @a[distance=..100] run playsound minecraft:entity.vindicator.ambient hostile @a[distance=..100] ~ ~ ~ 3 1

# summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitPirateMarker,smithed.entity,smithed.strict],Invulnerable:1b}