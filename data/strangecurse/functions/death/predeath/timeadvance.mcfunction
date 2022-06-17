## timeadvance
# Advances time until it is after midnight

execute store result score ctime VariablesI run time query daytime 
time add 100t
execute unless score ctime VariablesI matches 18000..21000 run schedule function strangecurse:death/predeath/timeadvance 2t