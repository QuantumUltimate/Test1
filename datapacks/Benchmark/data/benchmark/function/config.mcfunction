### The config is updated when the datapack is reloaded. You can manually enter the commands without reloading.

### SKIP_EMPTY_FUNCTION: Wether to get profile of the empty function. (Inverted!)
### Values:
### 0 - get empty function profile
### 1 - NOT get empty function profile
scoreboard players set SKIP_EMPTY_FUNCTION benchmark.var 0

### FUNCTION_AMOUNT_TO_TEST: Amount of functions to test (to compare).
### Values:
### 0 - run only empty function (Why would you need this?)
### 1 - test only benchmark:test
### 2 - ALSO benchmark:test2
### 3 - ALSO benchmark:test3
### See benchmark:order for more.
scoreboard players set FUNCTION_AMOUNT_TO_TEST benchmark.var 2

### TICKS_PER_FUNCTION: Duration of one measurement. The longer is the measurement the lower will be the uncertainty.
### Values:
### 1..
### 100 (5 seconds) is recommended
scoreboard players set TICKS_PER_FUNCTION benchmark.var 100

#CONSIDER_ONLY_LAST_MEASUREMENTS: Wether only and how many last measurements are considered while calculating the average value and the uncertainty
### Values:
### 0 - consider all measurements (not recommended)
### 1 - only one measurement gives infinite uncertainty, but the formula returns a zero. Don't use this.
### 2..5000
scoreboard players set CONSIDER_ONLY_LAST_MEASUREMENTS benchmark.var 10

### BENCHMARK_MODE: Determines the mode of the benchmark. There is a hardcoded limit of 5000 measurements regardless of MAX_UNCERTAINTY or BENCHMARK_MODE.
### Values:
### 0 - The benchmark runs the functions until the measurements have uncertainty lower than given by MAX_UNCERTAINTY. Regardless of the value of MAX_UNCERTAINTY the functions are executed at least 5 times *.
### 1 - 0 and 2 combined, * does not apply
### 2 - The benchmark runs the functions a given by MAX_MEASUREMENTS amount of time
scoreboard players set BENCHMARK_MODE benchmark.var 1

### MAX_UNCERTAINTY: Sets the limit (treshhold) of the measurements, see BENCHMARK_MODE. You could also adjust CONSIDER_ONLY_LAST_MEASUREMENTS.
### Values:
### 1..
### 1 - ±1%
scoreboard players set MAX_UNCERTAINTY benchmark.var 5

### MAX_MEASUREMENTS: Sets the limit of the measurement amount, see BENCHMARK_MODE. There is a hardcoded limit of 5000 measurements regardless of MAX_UNCERTAINTY or BENCHMARK_MODE.
### Values:
### 1..5000
scoreboard players set MAX_MEASUREMENTS benchmark.var 50

### CALCULATE_EVERY_CYCLE: Sets how often the uncertainty is calculated. This also affects how often uncertainty is checked in BENCHMARK_MODE 0 or 1. This could be needed, as the more measurement cycles (during one benchmark run) are proceeded the less performace the datapack has (more data to calculate).
### Values:
### 0 - calculate only once at the very end
### 1 - calculate every cycle
### x.. - calculate every x-th cycle
scoreboard players set CALCULATE_EVERY_CYCLE benchmark.var 1