## ChooseChallenge:
# Increases the challenge score by 1 and sets do reload to 1

# Adjust Scoreboard

execute unless score ChallengeNumT VariablesC matches 0..5 run scoreboard players set ChallengeNumT VariablesC 0
execute if score ChallengeNumT VariablesC matches 0..5 run scoreboard players add ChallengeNumT VariablesC 1

# Tell Current Setting to Player
execute if score ChallengeNumT VariablesC matches 1 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[SC] StrangeCurse has been selected","color":"dark_red","bold":true}
execute if score ChallengeNumT VariablesC matches 2 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[FB] The Forbidden Blocks has been selected","color":"dark_green","bold":true}
execute if score ChallengeNumT VariablesC matches 3 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[DL] Dark Life has been selected","color":"black","bold":true}
execute if score ChallengeNumT VariablesC matches 4 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[IF] It Follows Has Been selected","color":"light_purple","bold":true}
execute if score ChallengeNumT VariablesC matches 5 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[VL] The Vampire Life challenge has been selected","color":"red","bold":true}
execute if score ChallengeNumT VariablesC matches 6 run tellraw @a[nbt={Inventory:[{tag:{challengeselector:1b}}]}] {"text":"[WG] Wild Gravity has been selected","color":"dark_purple","bold":true}

# Prepare for Reload:
scoreboard players set doReload VariablesC 1