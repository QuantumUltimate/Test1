### Change this only if you want to add other functions to this list. All other settings should be changed in the config (see benchmark:config).

execute if score function benchmark.var matches 0 run function benchmark:bin/empty
execute if score function benchmark.var matches 1 run function benchmark:test
execute if score function benchmark.var matches 2 run function benchmark:test2
execute if score function benchmark.var matches 3 run function benchmark:test3