## startdeath
# Starts the death process

## Scoreboards:
scoreboard players set deathIP_sc VariablesI 1
tag @s add herobrinemarked

## Sounds:
stopsound @s
execute at @s run playsound entity.endermite.death master @s ~ ~ ~ .3 .8

## Schedule:
schedule function strangecurse:death/predeath/timeadvance 5s
schedule function strangecurse:death/predeath/clock 5s
schedule function strangecurse:death/predeath/rundeath 16s