## killloop
# Checks every 10 seconds if a player is too high and kills them if they are
execute as @a[tag=sky] run function wildgravity:killatsky/kill
execute as @a[tag=!skydeath] if predicate wildgravity:sky run tag @s add sky
execute as @a[tag=sky] run function wildgravity:killatsky/killsong
tag @a[tag=skydeath] remove skydeath

schedule function wildgravity:killatsky/killloop 10s