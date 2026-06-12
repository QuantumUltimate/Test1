execute if score #colm_copy benchmark.var matches 0 run data modify storage benchmark:main Buffer set from storage benchmark:main Measurements[0]
execute if score #colm_copy benchmark.var matches 1.. run function benchmark:bin/profiler/math/only_last
execute store result score #n benchmark.var if data storage benchmark:main Buffer[]
scoreboard players set #x benchmark.var 0
function benchmark:bin/profiler/math/get_sum
scoreboard players operation #x benchmark.var /= #n benchmark.var

execute if score #colm_copy benchmark.var matches 0 run data modify storage benchmark:main Buffer set from storage benchmark:main Measurements[0]
execute if score #colm_copy benchmark.var matches 1.. run function benchmark:bin/profiler/math/only_last
scoreboard players set #d benchmark.var 0
function benchmark:bin/profiler/math/get_d
scoreboard players operation #d benchmark.var /= #n benchmark.var

scoreboard players operation #d benchmark.var *= #100 benchmark.var

scoreboard players operation #calc1 benchmark.var = #x benchmark.var
### to mathematicly round the uncertainty:
# scoreboard players operation #calc1 benchmark.var /= #2 benchmark.var
### to round up the uncertainty:
scoreboard players remove #d benchmark.var 1

scoreboard players operation #d benchmark.var += #calc1 benchmark.var
scoreboard players operation #d benchmark.var /= #x benchmark.var