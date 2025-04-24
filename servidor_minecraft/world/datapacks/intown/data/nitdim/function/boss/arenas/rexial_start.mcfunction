###Setup###
function nitdim:spawns/rexial
scoreboard objectives add nitBossHealth dummy
scoreboard objectives add nitInvulTime dummy
scoreboard objectives add nitBossTime dummy
scoreboard objectives add nitAttack dummy
bossbar add nitdim:rexial {"translate":"nitex.name.rexial","fallback":"Rexial the Soulless","color":"yellow","bold":true}
bossbar set nitdim:rexial color yellow
bossbar set nitdim:rexial max 200
bossbar set nitdim:rexial visible true

###Cosmetics###
execute at @e[tag=nitCagedZoglin,limit=3,sort=nearest,distance=..20] run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace iron_bars
execute at @e[tag=nitCagedZoglin,limit=3,sort=nearest,distance=..20] run playsound minecraft:block.chain.break block @a ~ ~ ~ 20
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 1 0.1
particle minecraft:poof ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force
particle minecraft:lava ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force
particle minecraft:smoke ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force

###Score Update###
scoreboard players set @s nitResourceSpawn 1