execute as @e[tag=spread] run tag @s add game1_spread
execute as @e[tag=game1_spread] run tag @s remove spread
execute if score nife_tg_insanemode nife_tg_settings matches 1 run scoreboard players set nife_tg_insaneatk nife_tg_settings 1
execute if score nife_tg_insanemode nife_tg_settings matches 1 run scoreboard players set nife_tg_insanedef nife_tg_settings 1
execute if score nife_tg_insanemode nife_tg_settings matches 1 run scoreboard players set nife_tg_insanesupply nife_tg_settings 1
execute if score nife_tg_insanemode nife_tg_settings matches 0 run scoreboard players set nife_tg_insaneatk nife_tg_settings 0
execute if score nife_tg_insanemode nife_tg_settings matches 0 run scoreboard players set nife_tg_insanedef nife_tg_settings 0
execute if score nife_tg_insanemode nife_tg_settings matches 0 run scoreboard players set nife_tg_insanesupply nife_tg_settings 0
scoreboard players reset nife_tg_insanemode