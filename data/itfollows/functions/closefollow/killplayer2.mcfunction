## killplayer2
# executed by killplayer
# exists so that the final death of the player can be delayed

execute as @r[tag=deadbyangel] run function itfollows:closefollow/killplayer3

execute if entity @a[tag=deadbyangel] run schedule function itfollows:closefollow/killplayer2 5s