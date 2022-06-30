## restartloop
# Restarts the farfollow protocall

## Cancel closefollow
schedule clear itfollows:closefollow/lookcheckloop

## Kill Angel
# Effects:
execute at @s run particle squid_ink ^ ^ ^5 .1 .1 .1 .3 50
execute at @s run playsound ambient.cave master @a ~ ~ ~ 20 2

# Kill Angel
kill @s

## Unload Chunks
execute at @e[type=area_effect_cloud,name="angelmarker2"] run forceload remove ~-200 ~-200 ~200 ~200

## Restart Loop:
schedule function itfollows:loop 300s
