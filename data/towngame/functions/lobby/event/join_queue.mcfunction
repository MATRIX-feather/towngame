gamemode adventure @a[distance=..0.5]
#如果玩家存在nife_tg_queue(队列tag),则代表要退出队列,添加nife_tg_queue_exit标签以处理该事物
tag @a[distance=..0.5,tag=nife_tg_queue] add nife_tg_queue_exit
#如果没有nife_tg_queue_exit,则为加入队列,添加nife_tg_queue(队列tag)
tellraw @a[distance=..0.5,tag=!nife_tg_queue] [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","translate":"tg.lobby.event.joinqueue"}]
tag @a[distance=..0.5,tag=!nife_tg_queue_exit] add nife_tg_queue
#如果有nife_tg_queue_exit,则将其nife_tg_queue(队列标签)去除
tag @a[distance=..0.5,tag=nife_tg_queue_exit] remove nife_tg_queue
tellraw @a[distance=..0.5,tag=nife_tg_queue_exit] [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"gold","bold":"true","translate":"tg.lobby.event.quitqueue"}]
#处理完成后去除nife_tg_queue_exit标签
tag @a[distance=..0.5,tag=nife_tg_queue_exit] remove nife_tg_queue_exit
#更改标题时间
title @a[distance=..0.5,tag=nife_tg_queue] times 0 40 5
#刷新bossbar
bossbar set nife:tg_lobby_countdownbar players @a[tag=nife_tg_queue]
#锁定自定义值
scoreboard players set nife_tg_lock nife_stats 1
#函数插件调起
function #towngame:plugin.event.player_join_queue
#将人tp回去
tp @p ~ ~ ~10
#检测队列中是否有玩家
scoreboard players set player_count nife_stats 0
execute at @a[tag=nife_tg_queue] run scoreboard players add player_count nife_stats 1
execute if score player_count nife_stats matches 1.. run function towngame:lobby/event/start_count
execute if score player_count nife_stats matches 0 run function towngame:lobby/event/reset_count