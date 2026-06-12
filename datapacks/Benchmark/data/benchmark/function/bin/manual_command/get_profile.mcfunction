### This function checks wether all conditions are met to start benchmark.
### If you want to disable one of them, just comment the lines. (Why would you need that?)

scoreboard players set #has_error benchmark.var 0

### Error if benchmark is currenlty running
execute if score is_active benchmark.var matches 1 run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Benchmark is already running!","color":"red"}]
execute if score is_active benchmark.var matches 1 run scoreboard players set #has_error benchmark.var 1

### Error if SKIP_EMPTY_FUNCTION has wrong value
execute unless score SKIP_EMPTY_FUNCTION benchmark.var matches 0..1 run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! SKIP_EMPTY_FUNCTION has a wrong value!","color":"red"}]
execute unless score SKIP_EMPTY_FUNCTION benchmark.var matches 0..1 run scoreboard players set #has_error benchmark.var 1

### Error if FUNCTION_AMOUNT_TO_TEST has wrong value
execute unless score FUNCTION_AMOUNT_TO_TEST benchmark.var matches 0.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! FUNCTION_AMOUNT_TO_TEST has a wrong value!","color":"red"}]
execute unless score FUNCTION_AMOUNT_TO_TEST benchmark.var matches 0.. run scoreboard players set #has_error benchmark.var 1

### Error if TICKS_PER_FUNCTION has wrong value
execute unless score TICKS_PER_FUNCTION benchmark.var matches 1.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! TICKS_PER_FUNCTION has a wrong value!","color":"red"}]
execute unless score TICKS_PER_FUNCTION benchmark.var matches 1.. run scoreboard players set #has_error benchmark.var 1

### Error if BENCHMARK_MODE has wrong value
execute unless score BENCHMARK_MODE benchmark.var matches 0..2 run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! BENCHMARK_MODE has a wrong value!","color":"red"}]
execute unless score BENCHMARK_MODE benchmark.var matches 0..2 run scoreboard players set #has_error benchmark.var 1

### Error if MAX_UNCERTAINTY has wrong value
execute if score BENCHMARK_MODE benchmark.var matches 0..1 unless score MAX_UNCERTAINTY benchmark.var matches 1.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! MAX_UNCERTAINTY has a wrong value!","color":"red"}]
execute if score BENCHMARK_MODE benchmark.var matches 0..1 unless score MAX_UNCERTAINTY benchmark.var matches 0.. run scoreboard players set #has_error benchmark.var 1

### Error if MAX_MEASUREMENTS has wrong value
execute if score BENCHMARK_MODE benchmark.var matches 1..2 unless score MAX_MEASUREMENTS benchmark.var matches 1.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! MAX_MEASUREMENTS has a wrong value!","color":"red"}]
execute if score BENCHMARK_MODE benchmark.var matches 1..2 unless score MAX_MEASUREMENTS benchmark.var matches 1.. run scoreboard players set #has_error benchmark.var 1

### Error if CALCULATE_EVERY_CYCLE has wrong value
execute unless score CALCULATE_EVERY_CYCLE benchmark.var matches 0.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! CALCULATE_EVERY_CYCLE has a wrong value!","color":"red"}]
execute unless score CALCULATE_EVERY_CYCLE benchmark.var matches 0.. run scoreboard players set #has_error benchmark.var 1

### Error if SKIP_EMPTY_FUNCTION == 1 and FUNCTION_AMOUNT_TO_TEST == 0
execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 1 if score FUNCTION_AMOUNT_TO_TEST benchmark.var matches 0 run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! FUNCTION_AMOUNT_TO_TEST mat not be 0 if SKIP_EMPTY_FUNCTION is 1!","color":"red"}]
execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 1 if score FUNCTION_AMOUNT_TO_TEST benchmark.var matches 0 run scoreboard players set #has_error benchmark.var 1

### Error if CONSIDER_ONLY_LAST_MEASUREMENTS == 1
execute if score CONSIDER_ONLY_LAST_MEASUREMENTS benchmark.var matches 1 run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," ",{"text":"Error:","color":"dark_red"}," ",{"text":"Wrong config settings! CONSIDER_ONLY_LAST_MEASUREMENTS mat not be 1!","color":"red"}]
execute if score CONSIDER_ONLY_LAST_MEASUREMENTS benchmark.var matches 1 run scoreboard players set #has_error benchmark.var 1

### Start the benchmark if no errors occured
execute if score #has_error benchmark.var matches 0 run function benchmark:bin/profiler/start