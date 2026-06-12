execute store result score #calc1 benchmark.var run data get storage benchmark:main Buffer[-1]
scoreboard players operation #calc1 benchmark.var -= #x benchmark.var
execute if score #calc1 benchmark.var matches ..-1 run scoreboard players operation #calc1 benchmark.var *= #-1 benchmark.var
scoreboard players operation #d benchmark.var += #calc1 benchmark.var
data remove storage benchmark:main Buffer[-1]
execute if data storage benchmark:main Buffer[0] run function benchmark:bin/profiler/math/get_d