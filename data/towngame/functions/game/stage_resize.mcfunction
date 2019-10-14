#标题
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage_resize.title"},{"text":"⚠","color":"red","bold":true}]
#tellraw
#tellraw @a {"text":"由于过长时间没有分出胜负,游戏将重新执行缩圈"}
#计分板
scoreboard players set nife_tg_bordertime nife_stats 1
scoreboard players set nife_tg_border nife_stats 5
execute at @a[tag=nife_game_1,limit=1] run worldborder set 600 2