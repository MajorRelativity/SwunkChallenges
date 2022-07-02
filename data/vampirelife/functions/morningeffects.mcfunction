## morningeffects
# Gives the players their effects every morning

## Scoreboard:
scoreboard players add countM VariablesI 1

## Execute Effects
execute as @a[scores={totalKills=1..}] run function vampirelife:addhealth

## Schedule:
execute if score countM VariablesI matches ..10 run schedule function vampirelife:morningeffects 5t
execute if score countM VariablesI matches 11 run scoreboard players set countM VariablesI 0
execute if score countM VariablesI matches 11 run scoreboard players set @a totalKills 0
