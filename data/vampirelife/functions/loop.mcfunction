## loop
# Creates the loop for the vampire challenge

## Execute Morning Effects:
execute if predicate vampirelife:night unless score night VariablesI matches 1 run scoreboard players set night VariablesI 1
execute unless predicate vampirelife:night unless score night VariablesI matches ..-1 run scoreboard players remove night VariablesI 1
execute if score night VariablesI matches 0 as @a run function vampirelife:morningeffects

## Execute if Daytime or Nighttime
execute as @a[scores={kills=1..}] unless predicate vampirelife:night run function vampirelife:day
execute as @a[scores={kills=1..}] if predicate vampirelife:night run function vampirelife:night
execute as @a[scores={deaths=1..}] run function vampirelife:death
execute unless predicate vampirelife:night as @a[tag=died] run function vampirelife:deatheffects

## Reschedule Loop
schedule function vampirelife:loop 1s