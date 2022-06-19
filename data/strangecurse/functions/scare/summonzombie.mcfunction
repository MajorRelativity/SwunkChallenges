## summonzombie.mcfunction
# Summons the zombies and gives them speed

execute at @s run summon zombie ~ ~ ~ {Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute at @s run summon zombie ~ ~ ~ {Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute at @s run summon zombie ~ ~ ~ {Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute at @s run summon zombie ~ ~ ~ {Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute at @s run summon zombie ~ ~ ~ {Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute as @s at @s run spreadplayers ~ ~ 3 10 false @e[type=zombie,tag=scarezombie]

execute as @e[type=zombie,tag=scarezombie] run effect give @s speed 65 3 true
execute as @e[type=zombie,tag=scarezombie] run effect give @s resistance 65 3