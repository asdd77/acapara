execute if block ~ ~-1 ~ grass_block run tag @s add nitSafe
execute if block ~ ~-1 ~ podzol run tag @s add nitSafe
execute if predicate nitdim:skeleton_rider run tag @s add nitSafe
data merge entity @s[tag=!nitSafe] {SkeletonTrap:1b,Tags:[nitSafe]}