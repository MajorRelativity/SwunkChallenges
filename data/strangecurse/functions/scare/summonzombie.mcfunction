## summonzombie.mcfunction


execute at @s run summon zombie ~ ~ ~ {Invulnerable:1b,Glowing:1b,Tags:["scarezombie"],ArmorItems:[{},{},{},{id:"minecraft:clock",Count:1b}]}
execute as @s at @s run spreadplayers ~ ~ 3 10 false @e[type=zombie,tag=scarezombie]