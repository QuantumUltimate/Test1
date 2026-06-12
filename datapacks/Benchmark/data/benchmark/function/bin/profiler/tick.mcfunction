### Start worldborder/stopwatch timer
function benchmark:bin/profiler/stopwatch_start

### Run loop
function benchmark:bin/profiler/loop

### Increment elapsed tick count
scoreboard players add tick benchmark.var 1

### Complete current function measurement and prepare to measure next function
execute if score tick benchmark.var >= TICKS_PER_FUNCTION benchmark.var run function benchmark:bin/profiler/next_function

### Increment elapsed measurement cycle count and reset function count
execute if score function benchmark.var > FUNCTION_AMOUNT_TO_TEST benchmark.var run function benchmark:bin/profiler/next_measurement_cycle

### Stop benchmark
execute if score #stop benchmark.var matches 1.. run function benchmark:bin/profiler/stop