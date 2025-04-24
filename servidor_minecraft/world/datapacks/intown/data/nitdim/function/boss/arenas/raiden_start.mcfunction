###Setup###
execute positioned ~ ~1.5 ~ run function nitdim:spawns/raiden
scoreboard objectives add nitBossHealth dummy
scoreboard objectives add nitInvulTime dummy
scoreboard objectives add nitBossTime dummy
scoreboard objectives add nitAttack dummy
bossbar add nitdim:raiden {"translate":"nitsea.name.raiden","fallback":"Raiden the Necromancer","color":"blue","bold":true}
bossbar set nitdim:raiden color blue
bossbar set nitdim:raiden max 200
bossbar set nitdim:raiden visible true

###Cosmetics###
playsound minecraft:block.portal.travel block @p ~ ~ ~ 1
particle minecraft:poof ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force
particle minecraft:glow ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force
particle minecraft:portal ~ ~0.7 ~ 0.2 0.7 0.2 0.02 50 force

###Score Update###
scoreboard players set @s nitResourceSpawn 1