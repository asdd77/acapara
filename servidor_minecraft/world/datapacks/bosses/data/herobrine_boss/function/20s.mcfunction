schedule function herobrine_boss:20s 20s

execute as @e[type=vex,tag=herobrine_boss.minion,limit=5] at @s run summon fireball ~ ~ ~ {ExplosionPower:0,acceleration_power:0.04d,Motion:[0.0,-0.04,0.0],Tags:["herobrine_boss.fireball"],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["herobrine_boss.tnt_spawn"]}]}
execute as @e[type=fireball,tag=herobrine_boss.fireball] at @s run playsound entity.ghast.shoot ambient @a ~ ~ ~

#ENCHANT FLY
execute as @a[predicate=herobrine_boss:has_skull,scores={health=16..20}] at @s run function herobrine_boss:enchant_fly