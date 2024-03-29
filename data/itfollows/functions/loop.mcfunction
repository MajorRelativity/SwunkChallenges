
## Kill Old Angels
kill @e[type=armor_stand,name="angel"]

## Run Farfollow:

# Stage 1 - Relative Vector Position
execute as @a run function itfollows:farfollow/getrelposition

# Stage 2 - Relative Distance
execute unless entity @a[tag=not30k] run function itfollows:farfollow/getreldistance30k
execute as @a[tag=not30k] run function itfollows:farfollow/getreldistance

# Stage 3 - Sort and Run Close Follow if Close Enough
execute unless entity @a[tag=not30k] run function itfollows:farfollow/sortdistance30k
execute if entity @a[tag=not30k] run function itfollows:farfollow/sortdistance

# Stage 4 - Set Angel Position to 1/2 of distance to player:
execute as @p[tag=close2angel] run function itfollows:farfollow/setangelposition


## Restart Loop:
schedule function itfollows:loop 20s
