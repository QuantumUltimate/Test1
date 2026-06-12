### Remove scoreboard objective
scoreboard objectives remove benchmark.var
### ...








### Remove storage
data remove storage benchmark:main Measurements
data remove storage benchmark:main Buffer

### Set gamerules
function benchmark:bin/gamerules_reset

### ...


### ...


### Send message
tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," Datapack uninstalled. Now remove it from .../<your_world>/datapacks/!"]