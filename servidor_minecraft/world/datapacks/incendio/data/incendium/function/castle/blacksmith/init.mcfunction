# from: ../mob/init
# @s: blacksmith

data modify entity @s CustomName set value '{"translate":"incendium.mob.castle.blacksmith.name","fallback":"Piglin Blacksmith"}'

attribute @s generic.max_health base set 50
data merge entity @s {Health:50.0f}

data modify entity @s ArmorItems[3] set value {id:'minecraft:iron_helmet', count:1b}
data modify entity @s ArmorItems[2] set value {id:'minecraft:netherite_chestplate', count:1b}
data modify entity @s ArmorItems[1] set value {id:'minecraft:iron_leggings', count:1b}
data modify entity @s ArmorItems[0] set value {id:'minecraft:iron_boots', count:1b}

tag @s add in.activate_mid
