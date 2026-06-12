execute store result score #calc1 benchmark.var run data get storage benchmark:main Buffer[-1]
scoreboard players operation #x benchmark.var += #calc1 benchmark.var
data remove storage benchmark:main Buffer[-1]
execute if data storage benchmark:main Buffer[0] run function benchmark:bin/profiler/math/get_sum