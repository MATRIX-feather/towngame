#用来存放UI逻辑以及相对异步的任务
#region bossbar任务
execute at @a[tag=nife_game_1,limit=1] store result bossbar nife:game_1 value run worldborder get
execute at @a[tag=nife_game_1,limit=1] store result score border_size nife_stats run worldborder get
execute if score nife_tg_border nife_stats matches 0.. run bossbar set nife:game_1 name {"color":"dark_aqua","bold":true,"translate":"tg.main.bbtext","with":[{"color":"white","score":{"objective":"nife_time","name":"towngame_bossbar_num"}},{"translate":"tg.time.sec"},{"color":"white","score":{"objective":"nife_stats","name":"border_size"}},{"color":"white","score":{"name":"nife_tg_border","objective":"nife_stats"}},{"color":"green","score":{"objective":"nife_stats","name":"player_count"}}]}
execute if score nife_tg_border nife_stats matches -1 run bossbar set nife:game_1 name {"color":"dark_aqua","bold":true,"translate":"tg.main.bbtext.dm","with":[{"color":"red","translate":"tg.stage_deathmatch.title"},{"translate":"tg.panel.head"},{"color":"white","score":{"objective":"nife_stats","name":"border_size"}},{"color":"gold","score":{"objective":"nife_stats","name":"player_count"}}]}
execute if score border_size nife_stats matches 1250.. run bossbar set nife:game_1 color green
execute if score border_size nife_stats matches 500..1241 run bossbar set nife:game_1 color white
execute if score border_size nife_stats matches 250..499 run bossbar set nife:game_1 color yellow
execute if score border_size nife_stats matches ..249 run bossbar set nife:game_1 color red
#endregion
#region actionbar的坐标显示
execute as @a[tag=nife_game_1] store result score @s nife_pos_X run data get entity @s Pos[0]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Y run data get entity @s Pos[1]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Z run data get entity @s Pos[2]
execute as @a[tag=nife_game_1] if score @s nife_P-health matches ..40 run function towngame:game/ui/health_less
execute as @a[tag=nife_game_1] if score @s nife_P-health matches 41.. run function towngame:game/ui/health_normal
execute if score nife_tg_border nife_stats matches 0 run effect give @a[tag=nife_game_1] minecraft:slow_falling 1 1
#endregion