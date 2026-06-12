execute store result score #world_border_diameter benchmark.var run worldborder get
execute if score #world_border_diameter benchmark.var matches ..59998039 run function benchmark:bin/profiler/loop
# worldborder returns 39 only if 39 whole ms have actually passed. So, we want to stop when the next loop would be ran after 40 whole seconds.