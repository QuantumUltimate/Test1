scoreboard players set #colm_copy benchmark.var 0
function benchmark:bin/profiler/math/get_values
scoreboard players operation #x1 benchmark.var = #x benchmark.var
scoreboard players operation #d1 benchmark.var = #d benchmark.var
scoreboard players operation #n1 benchmark.var = #n benchmark.var

scoreboard players operation #colm_copy benchmark.var = CONSIDER_ONLY_LAST_MEASUREMENTS benchmark.var
function benchmark:bin/profiler/math/get_values
scoreboard players operation #x2 benchmark.var = #x benchmark.var
scoreboard players operation #d2 benchmark.var = #d benchmark.var

execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 0 if score function benchmark.var matches 1.. run function benchmark:bin/profiler/math/get_mspit

execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 0 if score function benchmark.var matches 0 run function benchmark:bin/profiler/report/save_empty


tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," Function ",{"score":{"name":"function","objective":"benchmark.var"},"color":"aqua"},". All ",{"score":{"name":"#n1","objective":"benchmark.var"}},": ",{"score":{"name":"#x1","objective":"benchmark.var"},"color":"yellow"},"±",{"score":{"name":"#d1","objective":"benchmark.var"},"color":"yellow"},{"text":"%","color":"yellow"},". Last ",{"score":{"name":"CONSIDER_ONLY_LAST_MEASUREMENTS","objective":"benchmark.var"}},": ",{"score":{"name":"#x2","objective":"benchmark.var"},"color":"yellow"},"±",{"score":{"name":"#d2","objective":"benchmark.var"},"color":"yellow"},{"text":"%","color":"yellow"}]
execute if score SKIP_EMPTY_FUNCTION benchmark.var matches 0 if score function benchmark.var matches 1.. run tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," All ",{"score":{"name":"#n1","objective":"benchmark.var"}},": ",{"score":{"name":"#t1.0","objective":"benchmark.var"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#t1.-1","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t1.-2","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t1.-3","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t1.-4","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t1.-5","objective":"benchmark.var"},"color":"gold"},{"text":"ms","color":"gold"},"±",{"score":{"name":"#dt1","objective":"benchmark.var"},"color":"gold"},{"text":"%","color":"gold"},". Last ",{"score":{"name":"CONSIDER_ONLY_LAST_MEASUREMENTS","objective":"benchmark.var"}},": ",{"score":{"name":"#t2.0","objective":"benchmark.var"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#t2.-1","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t2.-2","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t2.-3","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t2.-4","objective":"benchmark.var"},"color":"gold"},{"score":{"name":"#t2.-5","objective":"benchmark.var"},"color":"gold"},{"text":"ms","color":"gold"},"±",{"score":{"name":"#dt2","objective":"benchmark.var"},"color":"gold"},{"text":"%","color":"gold"}]

function benchmark:bin/measurement_table/rotate
scoreboard players add function benchmark.var 1
execute if score function benchmark.var <= FUNCTION_AMOUNT_TO_TEST benchmark.var run function benchmark:bin/profiler/report/one_at_a_time