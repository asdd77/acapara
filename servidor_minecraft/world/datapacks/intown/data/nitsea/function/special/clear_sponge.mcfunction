###Clears Sponges from the Galleon###
execute if entity @s[tag=nitIllGalleon] run fill ~-12 ~-8 ~-26 ~12 ~15 ~26 air replace wet_sponge
execute if entity @s[tag=nitIllGalleon] run fill ~-12 ~-8 ~-26 ~12 ~15 ~26 air replace sponge

###Clears Sponges###
execute if entity @s[tag=nitIllLab] run fill ~-10 ~-15 ~-10 ~10 ~10 ~10 air replace wet_sponge
execute if entity @s[tag=nitIllLab] run fill ~-10 ~-25 ~-10 ~10 ~10 ~10 air replace sponge