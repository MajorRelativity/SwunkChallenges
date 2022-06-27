## lookcheckloop
# Checks if the player is looking at the angel and makes the angel move if it isn't
# Look checking command by CloudWolf

## Check Looking Direction and Teleport:
execute at @e[type=armor_stand,limit=1,name="angel"] as @a[distance=..100] at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=armor_stand,name="angel"] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.1] run execute as @e[type=armor_stand,sort=nearest,name="angel"] run function itfollows:closefollow/tpangel

## Count and Run if Count too High:
# This makes it so that a player can't look at it the whole time
scoreboard players add countLook VariablesI 1
execute if score countLook VariablesI matches 8.. if predicate itfollows:random20 run execute as @e[type=armor_stand,sort=nearest,name="angel"] run function itfollows:closefollow/tpangeleffects

## Reschedule:
schedule function itfollows:closefollow/lookcheckloop 15t