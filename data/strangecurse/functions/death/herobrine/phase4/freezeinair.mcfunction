# Freezes the player by give them levitation 255

effect give @a[tag=herobrinemarked] levitation 10 255 true
execute at @p[tag=herobrinemarked] run summon area_effect_cloud ~ ~ ~ {Duration:400,CustomName:'{"text":"freezeplayer"}'}
function strangecurse:death/herobrine/phase4/freezetp