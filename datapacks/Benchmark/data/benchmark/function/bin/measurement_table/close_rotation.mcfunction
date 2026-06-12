function benchmark:bin/measurement_table/rotate
scoreboard players add function benchmark.var 1

execute if score function benchmark.var <= FUNCTION_AMOUNT_TO_TEST benchmark.var run function benchmark:bin/measurement_table/close_rotation