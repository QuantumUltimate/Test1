kill @e[type=marker,tag=lowpos]
function quantum:ray/marklow
execute at @s at @e[tag=lowpos,type=marker,distance=20..] run player @s look at ~ ~4 ~
execute at @s at @e[tag=lowpos,type=marker,distance=7..20] run player @s look at ~ ~1.4 ~
execute at @s at @e[tag=lowpos,type=marker,distance=3..7] run player @s look at ~ ~0.8 ~
execute at @s at @e[tag=lowpos,type=marker,distance=..3] run player @s look at ~ ~-1.5 ~