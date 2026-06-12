### Send saved old data before rewriting it
# tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"},"Previous measurements: ",{"nbt":"Measurements","storage":"benchmark:main"}]
### Create new empty measurement table
function benchmark:bin/measurement_table/create

### Set elaped measurement cycle count
scoreboard players set measurement benchmark.var 0
scoreboard players set #calculate_now benchmark.var 0

### Set current function to run
scoreboard players operation function benchmark.var = SKIP_EMPTY_FUNCTION benchmark.var

### Set past tick count
scoreboard players set tick benchmark.var 0

### Set elapsed iteration count
scoreboard players set #iteration benchmark.var 0

### Set activity boolean
scoreboard players set #stop benchmark.var 0
scoreboard players set is_active benchmark.var 1

### Tellraw status
tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"},{"text":" Gathering profile: ","color":"dark_green"},"Please wait. To force stop the benchmark, run ",{"text":"/function #benchmark:halt","clickEvent":{"action":"suggest_command","value":"/function #benchmark:halt"}}]