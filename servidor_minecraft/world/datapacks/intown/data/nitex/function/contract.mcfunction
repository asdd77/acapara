###Sets scoreboards used for advancements, attacks, and resource spawning###
scoreboard objectives add nitShaftCraft dummy
scoreboard objectives add nitResearchPower dummy
scoreboard objectives add nitEnergyRate dummy
scoreboard objectives add nitRandom dummy
scoreboard objectives add nitY dummy
scoreboard objectives add nitDamage dummy
scoreboard objectives add nitBaseHealth dummy
tag @s add nitexFounder
advancement grant @s only nitex:nitex/root

###Create the lift to the mine###
place template nitex:lift_top ~ ~-1 ~-3

###Create the bottom of the lift in the mine###
place template nitex:lift_bottom ~-4 ~-30 ~-7

###Empties and fills lift shaft###
fill ~ ~ ~-3 ~5 ~4 ~3 repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ chain[axis=y]"} replace sponge
fill ~2 ~-2 ~-1 ~4 ~-2 ~1 minecraft:repeating_command_block{auto:1b,Command:"fill ~ ~ ~ ~ ~-14 ~ air"}

###Place siteplanners###
place template nitex:siteplanner_e ~10 ~-27 ~
place template nitex:siteplanner_w ~-4 ~-27 ~
place template nitex:siteplanner_n ~3 ~-27 ~-7
place template nitex:siteplanner_s ~3 ~-27 ~7

###Remove the charter###
clear @p written_book[written_book_content~{title:"Excavation Lease"},custom_data~{nitContractBook:1b}]

###Assigns the mine's ID###
tag @a[distance=..20] add nitExcavator
execute store result score @s nitID run data get entity @s UUID[0]
scoreboard players operation @e[tag=nitSlateStor,limit=1,sort=nearest] nitID = @s nitID
scoreboard players operation @e[tag=nitCopperStor,limit=1,sort=nearest] nitID = @s nitID

###Summons markers for natural structures###
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitPiglinCave,nitIllagerEntity,nitIllagerBase,nitESpecialFeature,smithed.entity,smithed.strict],Invulnerable:1b,NoGravity:1b}
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllArena,nitIllagerEntity,nitIllagerBase,nitESpecialFeature,smithed.entity,smithed.strict],Invulnerable:1b,NoGravity:1b}
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllPyramid,nitIllagerEntity,nitIllagerBase,nitESpecialFeature,smithed.entity,smithed.strict],Invulnerable:1b,NoGravity:1b}
scoreboard players set @e[tag=nitESpecialFeature,limit=3,sort=nearest] nitShaftCraft 0
scoreboard players operation @e[tag=nitESpecialFeature,limit=3,sort=nearest] nitID = @s nitID

###Spreads and builds the natural structures for this town###
function nitdim:id_match_self
scoreboard players set @s nitSpreadLim 0
function nitex:spread_features

###Summons the Mine Foreman###
execute as @e[tag=nitMineForeman,limit=1,sort=nearest] at @s run summon villager ~ ~ ~ {VillagerData:{profession:cartographer,level:4,type:desert},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"translate":"nitex.name.foreman","fallback":"Mine Foreman"}',Offers:{Recipes:[{buy:{id:"minecraft:feather",count:1},sell:{id:"minecraft:written_book",count:1}},{buy:{id:"minecraft:deepslate",count:64},buyB:{id:"minecraft:copper_ingot",count:48},sell:{id: "minecraft:prismarine_shard", count: 1, components: {"minecraft:lore": ['{"color":"gray","fallback":"A masterfully crafted","italic":false,"translate":"nitdim.item.drill_rig.desc.1"}', '{"color":"gray","fallback":"mining drill.","italic":false,"translate":"nitdim.item.drill_rig.desc.2"}'], "minecraft:item_name": '{"color":"gold","fallback":"Mining Drill Rig","italic":false,"translate":"nitdim.item.drill_rig"}', "minecraft:enchantment_glint_override": 1b, "minecraft:custom_model_data": 8602023, "minecraft:custom_data": {nitex_drillRig: 1b}}},maxUses:9999999}]},Tags:[nitEntity,nitTicking,nitExcavator,nitEMF,smithed.entity,smithed.strict]}
scoreboard players operation @e[tag=nitEMF,limit=1,sort=nearest] nitID = @s nitID
scoreboard players set @e[tag=nitEMF,limit=1,sort=nearest] nitShaftCraft 0
function nitdim:debug/update_all

###Informs of completion###
tellraw @s [{"text":"[回]","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitex.contract.success","fallback":"You have successfully begun your excavation!","color":"white","bold":false}]