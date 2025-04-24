scoreboard objectives add nitID dummy
scoreboard objectives add nitTemp dummy

summon marker ^ ^ ^10 {Tags:[nitEntity,nitTicking,nitPhantomPortal,smithed.entity,smithed.strict]}
schedule function nitdim:phantom_portal 4t

advancement grant @s only nitdim:nitdim/root