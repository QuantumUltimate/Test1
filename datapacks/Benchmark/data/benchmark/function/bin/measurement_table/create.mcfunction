data modify storage benchmark:main Measurements set value []
execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 0 run data modify storage benchmark:main Measurements append value []
scoreboard players operation #fatt_copy benchmark.var = FUNCTION_AMOUNT_TO_TEST benchmark.var
execute if score #fatt_copy benchmark.var matches 1.. run function benchmark:bin/measurement_table/create_arrays