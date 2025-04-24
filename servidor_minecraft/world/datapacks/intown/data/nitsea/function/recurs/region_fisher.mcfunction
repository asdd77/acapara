###Prepares loot table###
setblock ~ ~1 ~ hopper

###Assigns new random 1st trade###
loot insert ~ ~1 ~ loot nitsea:command/region_fisher
data modify entity @s Offers.Recipes[0].sell set from block ~ ~1 ~ Items[0]
data remove block ~ ~1 ~ Items

###Assigns new random 2nd trade###
loot insert ~ ~1 ~ loot nitsea:command/region_fisher
data modify entity @s Offers.Recipes[1].sell set from block ~ ~1 ~ Items[0]
data remove block ~ ~1 ~ Items

###Assigns new random 3rd trade###
loot insert ~ ~1 ~ loot nitsea:command/region_fisher
data modify entity @s Offers.Recipes[2].sell set from block ~ ~1 ~ Items[0]
data remove block ~ ~1 ~ Items

###Assigns new random 4th trade###
loot insert ~ ~1 ~ loot nitsea:command/region_fisher
data modify entity @s Offers.Recipes[3].sell set from block ~ ~1 ~ Items[0]
data remove block ~ ~1 ~ Items

###Clears the hopper#
setblock ~ ~1 ~ air