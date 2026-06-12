execute as @e[tag=markright,type=marker] at @s align xyz positioned ~.5 ~.5 ~.5 run function quantum:ray/markright
execute as @e[tag=markleft,type=marker] at @s align xyz positioned ~.5 ~.5 ~.5 run function quantum:ray/markleft
execute unless entity @e[tag=markwide,tag=finished,type=marker] if entity @e[tag=markwide,type=marker,distance=..1000] run function quantum:ray/markwide