## startdeath
# Starts the death process

## Sounds:
stopsound @s
execute at @s run playsound entity.endermite.death master @s ~ ~ ~ .3 .8

## Schedule:
schedule function strangecurse:death/predeath/timeadvance 5s
schedule function strangecurse:death/predeath/clock 5s
schedule function strangecurse:death/predeath/rundeath 16s