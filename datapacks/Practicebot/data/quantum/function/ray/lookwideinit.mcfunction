kill @e[type=armor_stand]
kill @e[tag=markwide,type=marker]
summon marker ~ ~ ~ {Tags:["markleft","markwide"]}
summon marker ~ ~ ~ {Tags:["markright","markwide"]}
tp @e[tag=markwide,type=marker] ~ ~ ~ ~ ~
execute rotated ~ 0.0 run function quantum:ray/markwide
execute at @s at @e[tag=markwide,tag=finished,type=marker] facing entity @s eyes positioned ^1 ^ ^1 if function quantum:g1gc/block run return run player @s look at ~ ~ ~
execute at @s at @e[tag=markwide,tag=finished,type=marker] facing entity @s eyes positioned ^-1 ^ ^1 if function quantum:g1gc/block run return run player @s look at ~ ~ ~