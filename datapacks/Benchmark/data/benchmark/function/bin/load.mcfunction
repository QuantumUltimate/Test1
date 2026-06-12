### Create scoreboard objective
scoreboard objectives add benchmark.var dummy
### Set constants
scoreboard players set #-1 benchmark.var -1
scoreboard players set #2 benchmark.var 2
scoreboard players set #10 benchmark.var 10
scoreboard players set #100 benchmark.var 100
scoreboard players set #1000 benchmark.var 1000
scoreboard players set #10000 benchmark.var 10000
scoreboard players set #100000 benchmark.var 100000

### ...



### Set gamerules
function benchmark:bin/gamerules_set

### Set activity boolean
scoreboard players set is_active benchmark.var 0

### Update config
function benchmark:config

### Send message
tellraw @a [{"text":"","color":"gray"},{"text":"[","color":"red"},"Benchmark",{"text":"]","color":"red"}," Datapack reloaded. Config updated."]