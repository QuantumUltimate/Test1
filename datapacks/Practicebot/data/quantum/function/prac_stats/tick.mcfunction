execute as @a[scores={bow_prac_stopwatch=1..}] run return run function quantum:prac_stats/tick_line_2
execute as @a[tag=xlib_target,predicate=quantum:fall_distance40] run return run function quantum:prac_stats/fall_init
execute unless score .mode mode matches 2 if score .start start matches 1 as @a[tag=xlib_target] run function quantum:prac_stats/dist/init