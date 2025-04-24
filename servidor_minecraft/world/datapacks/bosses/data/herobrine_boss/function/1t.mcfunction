schedule function herobrine_boss:1t 1t

#SPAWN
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},nbt=!{Item:{components:{"minecraft:custom_data":{smithed:{ignore:{functionality:1b}}}}}}] at @s if block ~ ~ ~ #fire if block ~ ~-1 ~1 redstone_torch if block ~ ~-1 ~-1 redstone_torch if block ~1 ~-1 ~ redstone_torch if block ~ ~-1 ~1 redstone_torch if block ~ ~-2 ~-1 netherite_block if block ~1 ~-2 ~ netherite_block if block ~-1 ~-2 ~ netherite_block if block ~ ~-2 ~1 netherite_block if block ~1 ~-2 ~1 gold_block if block ~-1 ~-2 ~-1 gold_block if block ~1 ~-2 ~-1 gold_block if block ~-1 ~-2 ~1 gold_block if block ~ ~-2 ~ gold_block run function herobrine_boss:spawn

#FROST AND OBSIDIAN WALKER
execute as @e[type=stray,tag=herobrine_boss.boss] at @s unless block ~ ~ ~ water unless block ~ ~ ~ lava run fill ~5 ~3 ~5 ~-5 ~-1 ~-5 frosted_ice replace water
execute as @e[type=stray,tag=herobrine_boss.boss] at @s unless block ~ ~ ~ lava unless block ~ ~ ~ water run fill ~5 ~3 ~5 ~-5 ~-1 ~-5 obsidian replace lava
execute as @e[type=stray,tag=herobrine_boss.boss] at @s if block ~ ~ ~ water run tp @s ~ ~0.2 ~
execute as @e[type=stray,tag=herobrine_boss.boss] at @s if block ~ ~ ~ lava run tp @s ~ ~0.2 ~

#TNT SPAWNER
execute as @e[type=armor_stand,tag=herobrine_boss.tnt_spawn,nbt={OnGround:1b}] at @s run function herobrine_boss:tnt

#HEROBRINE INSIDE CLOUD
execute as @e[type=area_effect_cloud,tag=herobrine_boss.cloud.main] at @s run tp @e[type=stray,tag=herobrine_boss.boss] @s

#SKULL MAGIC
execute as @e[type=item,nbt=!{Glowing:1b},nbt={Item:{components:{"minecraft:custom_data":{"herobrine_boss.skull":1b}}}}] at @s run data merge entity @s {Glowing:1b}
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"herobrine_boss.skull":1b}}}}] at @s run particle soul_fire_flame ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1 normal

#HEROBRINE SOUND
execute as @e[type=stray,tag=herobrine_boss.boss,nbt={HurtTime:9s}] at @s run playsound entity.player.hurt hostile @a ~ ~ ~
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"herobrine_boss.death_sound":1b}}}}] at @s run function herobrine_boss:death_sound

#BOSSBAR COMMANDS
execute if entity @e[type=stray,tag=herobrine_boss.boss] run bossbar set herobrine_boss:boss visible true
execute unless entity @e[type=stray,tag=herobrine_boss.boss] run bossbar set herobrine_boss:boss visible false
execute as @e[type=stray,tag=herobrine_boss.boss] at @s run bossbar set herobrine_boss:boss players @a[distance=..175]
execute as @e[type=stray,tag=herobrine_boss.boss] at @s run execute store result bossbar herobrine_boss:boss value run data get entity @s Health

#HEROBRINE_BOSS TEAM HELP SNOWBALL OWNER
execute as @e[type=snowball,tag=herobrine_boss.help] at @s run data modify entity @s Owner set from entity @e[type=!player,distance=..1000,predicate=herobrine_boss:angryat,limit=1,sort=nearest] UUID
execute as @e[type=snowball,tag=herobrine_boss.help_vex] at @s run data modify entity @s Owner set from entity @e[type=!player,distance=..1000,tag=herobrine_boss.angryat,limit=1,sort=nearest] UUID

#PARTICLE EFFECTS
execute as @e[type=stray,tag=herobrine_boss.boss,nbt={OnGround:1b}] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal

#PERMANENT ANGER
execute as @e[type=!player,predicate=herobrine_boss:angryat,tag=!herobrine_boss.angryat] at @s run tag @s add herobrine_boss.angryat

execute as @e[type=skeleton,tag=herobrine_boss.minion,tag=herobrine_boss.no_fall] at @s run tp @s ~ ~ ~
execute as @e[type=skeleton,tag=herobrine_boss.minion,tag=herobrine_boss.no_fall,predicate=herobrine_boss:angry] at @s run tp @s ^ ^ ^0.1

effect clear @e[team=herobrine_boss,predicate=herobrine_boss:has_levitation_3] levitation
execute as @e[tag=herobrine_boss.fire_resistant,predicate=!herobrine_boss:has_fire_resistance] at @s run effect give @s fire_resistance 999999 0 true
execute as @e[tag=herobrine_boss.slow_fall,predicate=!herobrine_boss:has_slow_falling] at @s run effect give @s slow_falling 999999 0 true
execute as @e[tag=herobrine_boss.invisible,predicate=!herobrine_boss:has_invisibility] at @s run effect give @s invisibility 999999 0 true

execute as @a[predicate=herobrine_boss:has_skull] at @s run effect give @s slow_falling 1 0 true
execute as @a[predicate=herobrine_boss:has_skull] at @s run effect give @s strength 1 1 true
execute as @a[predicate=herobrine_boss:has_skull,nbt={OnGround:1b}] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute as @a[predicate=herobrine_boss:has_skull,nbt={HurtTime:1s},predicate=herobrine_boss:chance_10] at @s run function herobrine_boss:enchant_fly

execute as @e[type=snowball,tag=herobrine_boss.trigger] at @s run data modify entity @s Owner set from entity @p[gamemode=!creative,gamemode=!spectator] UUID

#VEX DESTROY BEDROCK
execute as @e[type=vex,tag=herobrine_boss.minion,predicate=!herobrine_boss:angry] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace bedrock

#VEX GO BACK
execute as @e[type=vex,tag=herobrine_boss.minion,nbt={NoAI:1b}] at @s run tp @s ^ ^ ^0.5 facing entity @e[type=stray,tag=herobrine_boss.boss,limit=1] eyes
execute as @e[type=vex,tag=herobrine_boss.minion,predicate=!herobrine_boss:angry,nbt=!{NoAI:1b}] at @s run execute if entity @e[type=stray,tag=herobrine_boss.boss,distance=32..] run data merge entity @s {NoAI:1b}
execute as @e[type=vex,tag=herobrine_boss.minion,nbt={NoAI:1b}] at @s run execute if entity @e[type=stray,tag=herobrine_boss.boss,distance=..2] run data remove entity @s NoAI