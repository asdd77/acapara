execute positioned ~ ~0.5 ~ run function nitdim:boss/cosmetic/raiden/wave_launch
execute as @a[distance=..7.9] run damage @s 12.0 minecraft:indirect_magic by @e[tag=nitRaidenBoss,limit=1,sort=nearest]
function nitdim:boss/attacks/reset