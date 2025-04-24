execute if block ~ ~-0.15 ~ #minecraft:air run tp @s ~ ~-0.15 ~
execute at @s if block ~ ~-0.15 ~ #minecraft:air run function nitdim:boss/entities/fire_cloud_a
data merge entity @s {Tags:[nitEntity,nitBossEntity,nitRexialCloud,nitTicking,smithed.entity,smithed.strict],Age:0,Duration:300,WaitTime:0,Radius:0.5f,RadiusOnUse:0.0f,RadiusPerTick:0.0025f,Particle:{type:"flame"}}