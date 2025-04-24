tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
playsound entity.evoker.prepare_summon block @s ~ ~ ~ 1 1.6
execute as @e[tag=nitPortal,limit=1,sort=nearest] run function nitdim:portals/set_portal/overworld
scoreboard players set @s nitFixPortal 0