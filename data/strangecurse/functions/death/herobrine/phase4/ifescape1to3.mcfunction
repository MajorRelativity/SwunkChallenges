## ifescape1to3
# Automatically runs the player death if they escape

execute as @p[tag=herobrinemarked] at @s run function strangecurse:death/herobrine/phase4/killplayer
title @p[tag=herobrinemarked] title {"text":"Murderer!","color":"dark_red","bold":true}
title @p[tag=herobrinemarked] subtitle {"text":"There Is No Escape","color":"dark_red"}