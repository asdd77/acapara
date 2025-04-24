execute align xyz run tp @s ~0.5 ~ ~0.5
execute at @s run summon marker ~ ~ ~ {Tags:[nitinvLift,nitEntity,nitEntityTechnical,smithed.entity,smithed.strict]}

###Place Up Display###
execute at @s anchored eyes rotated ~ 0 run summon interaction ^ ^0.5 ^1.5 {Tags:[nitinvLiftUp,nitEntity,nitEntityTechnical,smithed.entity,smithed.strict],width:0.3f,height:0.3f,response:1b}
execute at @s anchored eyes rotated ~ 0 run summon item_display ^ ^0.5 ^1.5 {Tags:[nitinvLiftUpDisplay,nitEntity,nitEntityTechnical,smithed.entity,smithed.strict],item:{id:"minecraft:magenta_glazed_terracotta",count:1,tag:{CustomModelData:8602015}},item_display:"none",billboard:"vertical",brightness:{block:15,sky:0},view_range:0.05,transformation:{translation:[0.0f,0.15f,0.0f],right_rotation:[0.0f,0.0f,0.75f,0.75f],scale:[0.3f,0.3f,0.3f],left_rotation:[0.0f,0.0f,0.0f,1.0f]}}