###Sets scoreboards used for advancements, attacks, and resource spawning###
scoreboard objectives add nitShipCraft dummy
scoreboard objectives add nitPirateType dummy
scoreboard objectives add nitRandom dummy
scoreboard objectives add nitDamage dummy
scoreboard objectives add nitBaseHealth dummy
tag @s add nitseaFounder
advancement grant @s only nitsea:nitsea/root

###Create the captain's ship###
execute at @s positioned ~ 49 ~ run place template nitsea:captain ~-12 ~-2 ~-12
tp @s ~ 53 ~

###Place siteplanner to the north-east###
place template nitsea:siteplanner_ne ~12 52 ~-9
place template nitsea:siteplanner_nw ~-12 52 ~-9
place template nitsea:siteplanner_se ~12 52 ~5
place template nitsea:siteplanner_sw ~-12 52 ~5

###Remove the charter###
clear @p written_book[written_book_content~{title:"Fleet Manifest"},custom_data~{nitContractBook:1b}]

###Assigns the town's ID###
tag @a[distance=..20] add nitSeafarer
execute store result score @s nitID run data get entity @s UUID[0]
scoreboard players operation @e[tag=nitFruitStor,limit=1,sort=nearest] nitID = @s nitID
scoreboard players operation @e[tag=nitWoolStor,limit=1,sort=nearest] nitID = @s nitID

###Randomizes the wagon's wool color###
execute at @s run function nitsea:sail_color

###Summons markers for special features###
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllPirates,nitSSpecialFeature,smithed.entity,smithed.strict]}
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllGalleon,nitIllagerEntity,nitIllagerBase,nitSSpecialFeature,smithed.entity,smithed.strict]}
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllLab,nitIllagerEntity,nitIllagerBase,nitSSpecialFeature,smithed.entity,smithed.strict]}
summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllCastle,nitIllagerEntity,nitIllagerBase,nitSSpecialFeature,smithed.entity,smithed.strict]}
scoreboard players set @e[tag=nitSSpecialFeature,tag=!nitIllPirates,limit=3,sort=nearest] nitShipCraft 0
scoreboard players operation @e[tag=nitSSpecialFeature,limit=4,sort=nearest] nitID = @s nitID

###Spreads the natural structures for the matching fleet###
function nitdim:id_match_self
function nitsea:spread_features

###Summons the first mate###
execute as @e[tag=nitFirstMate,limit=1,sort=nearest] at @s run summon villager ~ ~ ~ {VillagerData:{profession:"cartographer",level:4,type:"savanna"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"translate":"nitsea.name.first_mate","fallback":"First Mate"}',Offers:{Recipes:[{buy:{id:"minecraft:feather",count:1},sell:{id:"minecraft:written_book",count:1},maxUses:9999999},{buy:{id:"minecraft:stripped_oak_log",count:64},buyB:{id:"minecraft:white_wool",count:64},sell:{id: "minecraft:oak_boat", count: 1, components: {"minecraft:lore": ['{"color":"gray","fallback":"A masterfully crafted","italic":false,"translate":"nitdim.item.ship_hull.desc.1"}', '{"color":"gray","fallback":"seafaring vessel.","italic":false,"translate":"nitdim.item.ship_hull.desc.2"}'], "minecraft:item_name": '{"color":"blue","fallback":"Prepared Ship Hull","italic":false,"translate":"nitdim.item.ship_hull"}', "minecraft:enchantment_glint_override": 1b, "minecraft:custom_model_data": 8602000, "minecraft:custom_data": {nitsea_shipHull: 1b}}},maxUses:9999999}]},Tags:[nitEntity,nitTicking,nitSeafarer,nitSFM,smithed.entity,smithed.strict]}
scoreboard players operation @e[tag=nitSFM,limit=1,sort=nearest] nitID = @s nitID
function nitdim:debug/update_all

###Informs of completion###
tellraw @s [{"text":"[回]","color":"blue","bold":true},{"text":": ","color":"white","bold":false},{"translate":"nitsea.contract.success","fallback":"You have successfully set sail at this location!","color":"white","bold":false}]