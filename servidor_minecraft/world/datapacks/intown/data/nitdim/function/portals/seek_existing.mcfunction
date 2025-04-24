###Cleanup###
tag @s remove nitPortalSeeking

###Attempts to have the player exit at an existing nearby portal###
execute if entity @s[predicate=nitdim:in_overworld] in minecraft:overworld positioned ~-16 ~ ~-16 at @e[tag=nitPortal,dx=32,dz=32,y=0,dy=300,limit=1,sort=nearest] run tp @s ~-3.5 ~ ~
execute if entity @s[predicate=nitdim:in_between] in nitdim:in_between positioned ~-16 ~ ~-16 at @e[tag=nitPortal,dx=32,dz=32,y=0,dy=300,limit=1,sort=nearest] run tp @s ~-3.5 ~ ~
execute if entity @s[predicate=nitdim:in_buried_ocean] in nitdim:buried_ocean positioned ~-16 ~ ~-16 at @e[tag=nitPortal,dx=32,dz=32,y=0,dy=300,limit=1,sort=nearest] run tp @s ~-3.5 ~ ~
execute if entity @s[predicate=nitdim:in_primordial_desert] in nitdim:primordial_desert positioned ~-16 ~ ~-16 at @e[tag=nitPortal,dx=32,dz=32,y=-128,dy=300,limit=1,sort=nearest] run tp @s ~-3.5 ~ ~
execute if entity @s[predicate=nitdim:in_tempest] in nitdim:tempest positioned ~-16 ~ ~-16 at @e[tag=nitPortal,dx=32,dz=32,y=0,dy=300,limit=1,sort=nearest] run tp @s ~-3.5 ~ ~

###If there is no existing nearby portal, creates one###
execute at @s unless entity @e[tag=nitPortal,distance=..8] run function nitdim:portals/create_new

###Establishes accurate link###
execute at @s run function nitdim:portals/assign_link
#schedule function nitdim:portals/scheduled_link 35t