advancement revoke @s only nitsea:tech/place_dinghy

clear @s spyglass[custom_data~{nitsea_fishingDinghy:1b}] 1

place template nitsea:fleet/fishing_dinghy ~-3 ~-1 ~-4
fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace wet_sponge

execute as @e[tag=nitRegionFisher,limit=1,sort=nearest] at @s run function nitsea:recurs/region_fisher