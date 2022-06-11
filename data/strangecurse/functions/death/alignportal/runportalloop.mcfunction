## runportalloop.mcfunction
# Decides which direction the portal needs to face based on the score of the armor stand and runs
# that function.

## Portal Decision:

#x:
execute if score @e[type=armor_stand,name="dportal_sc",limit = 1] VariablesI matches 1..2 as @e[type=area_effect_cloud,name="deathportal"] run function strangecurse:death/alignportal/runportalx

#z: 
execute if score @e[type=armor_stand,name="dportal_sc",limit = 1] VariablesI matches 3..4 as @e[type=area_effect_cloud,name="deathportal"] run function strangecurse:death/alignportal/runportalz

#y:
execute if score @e[type=armor_stand,name="dportal_sc",limit = 1] VariablesI matches 5..6 as @e[type=area_effect_cloud,name="deathportal"] run function strangecurse:death/alignportal/runportaly

#air:
execute if score @e[type=armor_stand,name="dportal_sc",limit = 1] VariablesI matches 7 as @e[type=area_effect_cloud,name="deathportal"] run function strangecurse:death/alignportal/runportalair

## Reschedule Loop

schedule function strangecurse:death/alignportal/runportalloop 1t