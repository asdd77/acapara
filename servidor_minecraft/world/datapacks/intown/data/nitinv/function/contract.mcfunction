###Sets scoreboards used for advancements, attacks, and resource spawning###
scoreboard objectives add nitTowerCraft dummy
scoreboard objectives add nitResearchPower dummy
scoreboard objectives add nitDamage dummy
scoreboard objectives add nitBaseHealth dummy
tag @s add nitinvFounder
advancement grant @s only nitinv:nitinv/root

###Create the lift to the mine###
place template nitinv:lobby ~-1 ~-4 ~-11

###Remove the charter###
clear @p written_book[written_book_content~{title:"Invention Patent"},custom_data~{nitContractBook:1b}]

###Assigns the mine's ID###
tag @a[distance=..20] add nitInventor
execute store result score @s nitID run data get entity @s UUID[0]
scoreboard players operation @e[tag=nitSlateStor,limit=1,sort=nearest] nitID = @s nitID
scoreboard players operation @e[tag=nitLumberStor,limit=1,sort=nearest] nitID = @s nitID
scoreboard players operation @e[tag=nitinvPower,limit=1,sort=nearest] nitID = @s nitID

###Summons markers for natural structures###
#summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitPiglinCave,nitPrepared,nitESpecialFeature,smithed.entity,smithed.strict],Invulnerable:1b,NoGravity:1b}
#summon minecraft:marker ~ ~ ~ {Tags:[nitEntity,nitTicking,nitIllArena,nitESpecialFeature,smithed.entity,smithed.strict],Invulnerable:1b,NoGravity:1b}
#scoreboard players set @e[tag=nitESpecialFeature,tag=nitID_match] nitShaftCraft 0
#scoreboard players operation @e[tag=nitESpecialFeature,limit=2,sort=nearest] nitID = @s nitID

###Spreads and builds the natural structures for this town###
function nitdim:id_match_self
#scoreboard players set @s nitSpreadLim 0
#function nitex:spread_features

###Summons the Patent Officer###
execute as @e[tag=nitPatentOfficer,limit=1,sort=nearest] at @s run summon villager ~ ~ ~ {VillagerData:{profession:librarian,level:4,type:snow},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'"Patent Officer"',Offers:{Recipes:[{buy:{id:"minecraft:feather",count:1},sell:{id:"minecraft:written_book",count:1},maxUses:9999999}]},Tags:[nitEntity,nitTicking,nitInventor,nitIPO,smithed.entity,smithed.strict]}
scoreboard players operation @e[tag=nitIPO,limit=1,sort=nearest] nitID = @s nitID
scoreboard players set @e[tag=nitIPO,limit=1,sort=nearest] nitTowerCraft 0
function nitdim:debug/update_all