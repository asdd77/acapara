scoreboard players set #hit in.fire_laser 0
tag @s add laser
#execute rotated as @s positioned ^ ^1 ^1 run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:fire_charge,count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;4971507]}]}}}}
#execute rotated as @s positioned ~0.5 ~1 ~0.5 run 
#execute as @e[distance=..4,limit=1] at @s facing entity @e[type=blaze,tag=sentry,tag=attacking,sort=nearest,limit=1,distance=..50] eyes run 
summon minecraft:firework_rocket ~ ~1 ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16725028]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16733476]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16742692]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16751908]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16759040]},{shape:'burst',has_twinkle:false,has_trail:false,colors:[I;16765184]}]}}}}
# execute if entity @e[type=blaze,tag=in.sentry,distance=..5] run advancement grant @p[distance=..30,tag=in.self] only incendium:incendium/duel_of_the_fates

execute at @s positioned ~ ~1 ~ if score #hit in.fire_laser matches 0 if predicate incendium:random/87 if score #distance2 in.fire_laser matches 0..1200 positioned ^ ^ ^0.2 facing entity @e[type=#incendium:mobs,tag=!laser,distance=..10,sort=nearest,limit=1] eyes if block ~ ~ ~ #incendium:airs run function incendium:item/firestorm/ray/iter
execute if predicate incendium:random/50 run data merge entity @s {Fire:80s}
#execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.05 100 force
#effect give @s instant_damage 1 1
#