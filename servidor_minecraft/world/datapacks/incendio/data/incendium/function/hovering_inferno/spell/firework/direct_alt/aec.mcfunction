# looped every 20t by: ./loop

execute facing entity @p[tag=in.survival_player,distance=..50,predicate=incendium:dimension/nether] eyes run tp @s ^ ^ ^0.185

execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.025 10 force
execute if entity @a[distance=..1.8,predicate=incendium:dimension/nether] at @s run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Motion:[0.0,0.0,0.0],ShotAtAngle:1,LifeTime:1,FireworksItem:{id:"firework_rocket",count:1,components:{fireworks:{flight_duration:1,explosions:[{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;52991]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;49151]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;45055]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;38655]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;32255]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;25855]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;19455]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;13055]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;6655]},{shape:'small_ball',has_twinkle:false,has_trail:false,colors:[I;255]}]}}}}

execute at @s if entity @a[tag=in.survival_player,distance=..1.8,predicate=incendium:dimension/nether] run scoreboard players set $attack_alt in.inferno 51

# looping
execute if score $attack_alt in.inferno matches ..50 run schedule function incendium:hovering_inferno/spell/firework/direct_alt/loop 2t
execute if score $attack_alt in.inferno matches 51.. run kill @s
