scoreboard players set is_active benchmark.var 0

execute if score function benchmark.var <= FUNCTION_AMOUNT_TO_TEST benchmark.var run function benchmark:bin/measurement_table/close_rotation
scoreboard players operation function benchmark.var = SKIP_EMPTY_FUNCTION benchmark.var

function benchmark:bin/profiler/report/send