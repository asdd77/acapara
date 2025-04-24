kill @e[type=area_effect_cloud,tag=herobrine_boss.cloud]
effect give @e[type=stray,tag=herobrine_boss.boss] jump_boost 5 0 true
#NO NEED OF EXECUTE COMMAND
function herobrine_boss:alt/tornado/2
summon lightning_bolt ~ ~5 ~ {Tags:["smithed.entity"]}
summon lightning_bolt ~ ~5 ~ {Tags:["smithed.entity"]}
summon lightning_bolt ~ ~5 ~ {Tags:["smithed.entity"]}
summon lightning_bolt ~ ~5 ~ {Tags:["smithed.entity"]}
summon lightning_bolt ~ ~5 ~ {Tags:["smithed.entity"]}
schedule function herobrine_boss:tornado_30s 30s
execute if score herobrine_boss.s herobrine_boss.l < herobrine_boss.s herobrine_boss.t run schedule function herobrine_boss:vex 3s