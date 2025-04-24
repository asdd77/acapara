team add herobrine_boss
team modify herobrine_boss seeFriendlyInvisibles false
team modify herobrine_boss friendlyFire true
bossbar add herobrine_boss:boss [{"text":"Herobrine Boss","bold": true,"color": "dark_red"}]
bossbar set herobrine_boss:boss max 200
bossbar set herobrine_boss:boss color purple
function herobrine_boss:1t
function herobrine_boss:1s
function herobrine_boss:5s
function herobrine_boss:14s
function herobrine_boss:18s
function herobrine_boss:20s

#NOTIFY
scoreboard objectives add herobrine_boss.n dummy

#NUMBER OF EXTRA REINFORCEMENTS
scoreboard objectives add herobrine_boss.l dummy

#NUMBER OF MINIONS
scoreboard objectives add herobrine_boss.m dummy

#TOTAL LIMIT OF EXTRA REINFORCEMENTS
scoreboard objectives add herobrine_boss.t dummy
scoreboard players set herobrine_boss.s herobrine_boss.t 32

scoreboard objectives add health health
execute unless score herobrine_boss.s herobrine_boss.n matches 1 run function herobrine_boss:notify
gamerule sendCommandFeedback false
schedule function herobrine_boss:output 1t