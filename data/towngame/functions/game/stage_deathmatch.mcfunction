#标题
title @a[tag=nife_game_1] times 40 40 10
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage_deathmatch.title"},{"text":"⚠","color":"red","bold":true}]
tellraw @a[tag=nife_game_1] [{"translate":"tg.panel.head","color":"gray","bold":true},{"translate":"tg.stage_dm.msg"}]
title @a[tag=nife_game_1] subtitle {"color":"red","bold":true,"translate":"tg.stage1.subt"}
#计分板
scoreboard players set nife_tg_bordertime nife_stats 3
scoreboard players set nife_tg_border nife_stats -1
execute at @e[tag=nife_tg_point] run setblock ~ ~ ~ air
execute at @a[tag=nife_game_1,limit=1] run worldborder set 50 30
execute at @a[tag=nife_game_1,limit=1] run worldborder damage amount 0.5
effect clear @a
effect give @a[tag=nife_game_1] minecraft:health_boost 1000000 30 true
effect give @a[tag=nife_game_1] minecraft:blindness 1 1 true
effect give @a[tag=nife_game_1] minecraft:hunger 1000000 1 true
effect give @a[tag=nife_game_1] minecraft:instant_health 1 20 true