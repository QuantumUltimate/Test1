data modify storage benchmark:main Measurements[0] append value 0
execute store result storage benchmark:main Measurements[0][-1] int 1 run scoreboard players get #iteration benchmark.var

scoreboard players set #x benchmark.var 0
scoreboard players set #d benchmark.var 0

scoreboard players operation #colm_copy benchmark.var = CONSIDER_ONLY_LAST_MEASUREMENTS benchmark.var
execute if score #calculate_now benchmark.var matches 0 run function benchmark:bin/profiler/math/get_values
tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," Function ",{"score":{"name":"function","objective":"benchmark.var"},"color":"aqua"}," executed ",{"score":{"name":"#iteration","objective":"benchmark.var"},"color":"green"}," times. Average: ",{"score":{"name":"#x","objective":"benchmark.var"},"color":"yellow"},"±",{"score":{"name":"#d","objective":"benchmark.var"},"color":"yellow"},{"text":"%","color":"yellow"}]


### Check if one more cycle is needed
execute if score BENCHMARK_MODE benchmark.var matches 0..1 if score #d benchmark.var > MAX_UNCERTAINTY benchmark.var run scoreboard players set #need_one_more_cycle benchmark.var 1
execute if score BENCHMARK_MODE benchmark.var matches 0..1 unless score #calculate_now benchmark.var matches 0 run scoreboard players set #need_one_more_cycle benchmark.var 1


function benchmark:bin/measurement_table/rotate
scoreboard players add function benchmark.var 1
scoreboard players set tick benchmark.var 0
scoreboard players set #iteration benchmark.var 0