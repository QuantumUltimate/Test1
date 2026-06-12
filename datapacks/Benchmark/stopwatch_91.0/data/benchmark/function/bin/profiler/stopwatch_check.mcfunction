execute store result score #stopwatch_ms benchmark.var run stopwatch query benchmark:main 1000
execute if score #stopwatch_ms benchmark.var matches ..39 run function benchmark:bin/profiler/loop
# idk how stopwatches round their values. Assume the behaviour is same as with worldborder.