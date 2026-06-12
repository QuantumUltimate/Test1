scoreboard players add measurement benchmark.var 1

### Stop if measurement uncertainty threshold is passed
execute if score BENCHMARK_MODE benchmark.var matches 0..1 if score measurement benchmark.var matches 5.. if score #need_one_more_cycle benchmark.var matches 0 run scoreboard players set #stop benchmark.var 1
scoreboard players set #need_one_more_cycle benchmark.var 0

### Stop if measurement config limit is reached
execute if score BENCHMARK_MODE benchmark.var matches 1..2 if score measurement benchmark.var >= MAX_MEASUREMENTS benchmark.var run scoreboard players set #stop benchmark.var 1

### Stop if measurement hard limit is reached
execute if score measurement benchmark.var matches 5000.. run scoreboard players set #stop benchmark.var 1

execute unless score #stop benchmark.var matches 1 run scoreboard players operation function benchmark.var = SKIP_EMPTY_FUNCTION benchmark.var

scoreboard players operation #calculate_now benchmark.var = measurement benchmark.var
scoreboard players add #calculate_now benchmark.var 1
scoreboard players operation #calculate_now benchmark.var %= CALCULATE_EVERY_CYCLE benchmark.var