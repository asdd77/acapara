execute if entity @s[tag=nitSiteNE] run place template nitsea:fleet/empty ~1 ~-5 ~-17

execute if entity @s[tag=nitSiteNW] run place template nitsea:fleet/empty ~-25 ~-5 ~-17

execute if entity @s[tag=nitSiteSE] run place template nitsea:fleet/empty ~1 ~-5 ~-3

execute if entity @s[tag=nitSiteSW] run place template nitsea:fleet/empty ~-25 ~-5 ~-3

setblock ~ ~ ~ oak_slab
setblock ~ ~1 ~ air

function nitsea:siteplanner/new_sites_check