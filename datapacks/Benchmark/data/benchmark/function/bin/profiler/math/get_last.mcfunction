data modify storage benchmark:main Buffer prepend from storage benchmark:main Measurements[0][-1]
data remove storage benchmark:main Measurements[0][-1]
scoreboard players remove #i benchmark.var 1
execute if score #i benchmark.var matches 1.. run function benchmark:bin/profiler/math/get_last