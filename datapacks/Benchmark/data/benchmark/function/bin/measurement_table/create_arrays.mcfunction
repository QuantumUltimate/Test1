data modify storage benchmark:main Measurements append value []
scoreboard players remove #fatt_copy benchmark.var 1 
execute if score #fatt_copy benchmark.var matches 1.. run function benchmark:bin/measurement_table/create_arrays