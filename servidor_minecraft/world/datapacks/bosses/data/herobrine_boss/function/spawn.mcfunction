setblock ~ ~ ~ air
data merge entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},limit=1,sort=nearest] {Fire:-1s}
execute if entity @e[type=armor_stand,tag=herobrine_boss.boss] run title @a[gamemode=!spectator,distance=..8] title "Herobrine already exists!"
execute if entity @e[type=stray,tag=herobrine_boss.boss] run title @a[gamemode=!spectator,distance=..8] title "Herobrine was teleported back!"
execute if entity @e[type=stray,tag=herobrine_boss.boss] run kill @e[type=area_effect_cloud,tag=herobrine_boss.cloud]
execute if entity @e[type=stray,tag=herobrine_boss.boss] run playsound entity.wither.spawn hostile @a ~ ~ ~ 1 0.1
execute if entity @e[type=stray,tag=herobrine_boss.boss] run tp @e[type=stray,tag=herobrine_boss.boss] @s
execute unless entity @e[type=stray,tag=herobrine_boss.boss] unless entity @e[type=armor_stand,tag=herobrine_boss.boss] run function summon:herobrine_boss/dummy