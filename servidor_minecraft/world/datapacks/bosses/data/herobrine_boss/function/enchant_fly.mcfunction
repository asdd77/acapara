effect give @s[type=!player] levitation 2 5 true
effect give @s[type=player,nbt={OnGround:1b}] levitation 2 5 true
playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~
particle minecraft:dragon_breath ~ ~ ~ 2 2 2 0 500 force
particle minecraft:enchant ~ ~ ~ 2 2 2 0 500 force
effect give @s[type=!player] instant_damage 2 0 true
effect give @s[type=player] regeneration 8 1