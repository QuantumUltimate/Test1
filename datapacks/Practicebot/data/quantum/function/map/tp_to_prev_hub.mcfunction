execute if score .mode mode matches 1 run tp @s -669.5 31 90.5 0 0
execute if score .mode mode matches 2 run tp @s -701.5 31 90.5 0 0
execute if score .mode mode matches 3 run tp @s -637.5 31 90.5 0 0
execute if score .mode mode matches 4..5 run tp @s -605.5 31 90.5 0 0
execute if score .mode mode matches 6 run tp @s -605.5 31 134.5 0 0


execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] if entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 1f
execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] if entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 1f
execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] if entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 1f
execute at @s positioned ~-16 ~ ~-21 as @e[nbt={CustomNameVisible:1b}] if entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 1f
execute at @s positioned ~-16 ~ ~-21 as @e[nbt={CustomNameVisible:1b}] if entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 1f

execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] unless entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 0f
execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] unless entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 0f
execute at @s positioned ~-16 ~ ~-30 as @e[nbt={CustomNameVisible:1b}] unless entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 0f
execute at @s positioned ~-16 ~ ~-21 as @e[nbt={CustomNameVisible:1b}] unless entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 0f
execute at @s positioned ~-16 ~ ~-21 as @e[nbt={CustomNameVisible:1b}] unless entity @s[dx=31,dy=10,dz=60] run data modify entity @s view_range set value 0f

execute positioned -656.5 55.00 76.50 as @e[nbt={CustomNameVisible:1b}] positioned ~-10 ~ ~-10 if entity @s[dx=20,dy=10,dz=20] run data modify entity @s view_range set value 1f