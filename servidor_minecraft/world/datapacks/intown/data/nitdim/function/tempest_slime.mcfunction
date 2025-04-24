execute if block ~ ~-1 ~ magma_block run tag @s add nitMagma
tag @s[tag=!nitMagma] add nitSlime
execute if entity @s[tag=nitSlime] run summon slime
execute if entity @s[tag=nitSlime] run tp @s ~ -10 ~