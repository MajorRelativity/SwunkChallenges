## summonplayer.mcfunction
# Summons the player armor stand with the player head and kills the player

## Cancel Freeze:
schedule clear strangecurse:death/herobrine/phase4/freezetp

## Forceload Area:
execute as @p[tag=herobrinemarked] at @s run forceload add ~-5 ~-5 ~5 ~5

## Initial Summon:
execute as @p[tag=herobrinemarked] at @s run summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,ShowArms:1b,NoBasePlate:1b,CustomName:'{"text":"playerstand"}'}
execute as @e[type=armor_stand,name="playerstand"] at @s rotated as @p[tag=herobrinemarked] run teleport @s ~ ~ ~ ~ ~
execute as @p[tag=herobrinemarked] run loot replace entity @e[type=armor_stand,name="playerstand"] armor.head loot strangecurse:playerhead
execute at @p[tag=herobrinemarked] run playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 2 .7 1
execute at @p[tag=herobrinemarked] run particle minecraft:explosion ~ ~ ~ .2 .2 .2 3 30

## Kill Player
execute as @p[tag=herobrinemarked] run function strangecurse:death/herobrine/phase4/removeplayertags


## Modify Armor Stand:
schedule function strangecurse:death/herobrine/phase4/pose1 2s
schedule function strangecurse:death/herobrine/phase4/pose2 3.5s
schedule function strangecurse:death/herobrine/phase4/pose3 4.5s
schedule function strangecurse:death/herobrine/phase4/pose4 6s
schedule function strangecurse:death/herobrine/phase4/playerexplode 8s



