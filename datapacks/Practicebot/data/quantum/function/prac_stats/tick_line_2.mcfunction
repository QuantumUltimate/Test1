scoreboard players set .actionbar map 1
scoreboard players set .title_timer map 10
execute store result storage quantum:bow_prac_stopwatch time double .05 run scoreboard players get @s bow_prac_stopwatch
scoreboard players add @s bow_prac_stopwatch 1
title @s actionbar [{"text":"Time: "},{"nbt":"time","storage":"quantum:bow_prac_stopwatch","color":"green"},{"text":"s","color":"green"}]
execute as @a[advancements={quantum:used_bow=false}] run scoreboard players set @s bow_prac_stopwatch 0
advancement revoke @a[advancements={quantum:used_bow=true}] only quantum:used_bow