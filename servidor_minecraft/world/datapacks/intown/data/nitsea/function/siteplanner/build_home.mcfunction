execute if entity @s[tag=nitSiteNE] run place template nitsea:fleet/home ~1 ~-5 ~-17

execute if entity @s[tag=nitSiteNW] run place template nitsea:fleet/home ~-25 ~-5 ~-17

execute if entity @s[tag=nitSiteSE] run place template nitsea:fleet/home ~1 ~-5 ~-3

execute if entity @s[tag=nitSiteSW] run place template nitsea:fleet/home ~-25 ~-5 ~-3

setblock ~ ~ ~ oak_slab
setblock ~ ~1 ~ air

function nitsea:siteplanner/new_sites_check
advancement grant @a[distance=..20] only nitsea:nitsea/complete_fleet build-home

###Increments ship count and performs pirate attacks/reveals###
execute as @e[tag=nitPirateMarker,distance=..35] at @s run function nitdim:id_set_first_mate
execute as @e[tag=nitEntity,distance=..300] at @s run function nitsea:attacks_check