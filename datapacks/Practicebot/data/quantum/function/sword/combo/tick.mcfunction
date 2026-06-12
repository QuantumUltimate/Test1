execute if score @s state matches 2 run function quantum:sword/passive/state2
execute unless score @s state matches 2 run function quantum:sword/passive/notstate2

tag @s[scores={state=1},tag=touched_ground] remove touched_ground
execute unless score .mode mode matches 4..5 run function quantum:decisions/tick
execute unless score .mode mode matches 4..5 run function eval:experiment/sword_tick
execute unless score .mode mode matches 4..5 if score @s state matches 3 run function quantum:sword/passive/main
execute unless score .mode mode matches 4..5 if score @s state matches 3 run return run function quantum:decisions/tick2
function quantum:sword/bot_mech/combo_logic
function quantum:sword/bot_mech/distance
execute if score .gear toggles matches 1 at @s[scores={bowcharge=..0,pearlcd=..0}] unless score .mode mode matches 4..5 unless score @s airborne matches 1 unless entity @a[tag=xlib_target,distance=..9] unless score @p[tag=xlib_target] airborne matches 1 run function quantum:g1gc/pearl
execute if score @s tempstrafe matches 1 at @s run function quantum:sword/bot_mech/strafe
execute if score @s hit_decision matches 1 at @s run function quantum:sword/combo/hit
execute unless score .mode mode matches 4..5 run function quantum:cobwebs/fluid_main
execute unless score .mode mode matches 3 run scoreboard players set @a disable_shield_decision 0
execute unless score .mode mode matches 6 unless score .mode mode matches 3 run function quantum:decisions/tick2
# execute if score .uppercut toggles matches 1 unless score .random toggles matches 1 if score @s[scores={OnGround=1}] real_hitcd matches ..2 if score .random random matches 50.. run player @s jump once