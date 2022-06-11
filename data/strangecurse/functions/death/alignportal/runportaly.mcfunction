## runportaly.mcfunction
# Aligns the portal in the y direction, animates it. Also slowly rotates the portal

execute at @s rotated as @s run function strangecurse:gportal/animate
execute at @s rotated as @s run tp @s ~ ~ ~ ~1 ~