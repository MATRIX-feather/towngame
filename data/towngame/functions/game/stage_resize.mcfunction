#标题
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage_resize.title"},{"text":"⚠","color":"red","bold":true}]
#计分板
scoreboard players set nife_tg_bordertime nife_stats 1
scoreboard players set nife_tg_border nife_stats 5
scoreboard players add resize_times nife_stats 1
#execute if score resize_times nife_stats matches 4.. run scoreboard players set nife_tg_border nife_stats 9
title @a[tag=nife_game_1] subtitle [{"color":"red","bold":true,"score":{"objective":"nife_stats","name":"resize_times"}},{"text":" / "},{"score":{"objective":"nife_tg_settings","name":"dm_time"}}]