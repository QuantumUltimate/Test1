advancement revoke @s only quantum:hit
# Player hitcd for pcrits
execute if entity @s[tag=xlib_target] if score .gear toggles matches 1 run scoreboard players set @s hitcd 14
execute if entity @s[tag=xlib_target] if score .gear toggles matches 2 run scoreboard players set @s hitcd 15
scoreboard players set @s real_hitcd 11