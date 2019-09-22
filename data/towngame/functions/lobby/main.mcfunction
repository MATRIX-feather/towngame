#检测玩家是否要加入队列
execute at @e[tag=nife_tg_lobby] if entity @a[distance=..0.5] if score game1 nife_stats matches 0 run function towngame:lobby/event/join_queue
#检测队列时间
bossbar set nife:tg_lobby_countdownbar players @a[tag=nife_tg_queue]
execute if score nife_tglobby_countdown nife_stats matches 1 run function towngame:lobby/calccountdown
execute if score nife_tg_insanemode nife_tg_settings matches 0 run bossbar set nife:tg_lobby_countdownbar name [{"text":"距离游戏开始还有 "},{"color":"gold","bold":"true","score":{"objective":"nife_time","name":"nife_tglobby_bossbarnum"}},{"text":" 秒"},{"text":" | ","color":"gray","bold":true},{"text":"当前队列人数 : "},{"bold":"true","color":"gold","score":{"objective":"nife_stats","name":"player_count"}},{"color":"gray","bold":"true","text":" | "},{"color":"gold","bold":true,"text":"Insane模式已"},{"color":"gray","bold":true,"text":"关闭"}]
execute if score nife_tg_insanemode nife_tg_settings matches 1 run bossbar set nife:tg_lobby_countdownbar name [{"text":"距离游戏开始还有 "},{"color":"gold","bold":"true","score":{"objective":"nife_time","name":"nife_tglobby_bossbarnum"}},{"text":" 秒"},{"text":" | ","color":"red","bold":true},{"text":"当前队列人数 : "},{"bold":"true","color":"gold","score":{"objective":"nife_stats","name":"player_count"}},{"color":"red","bold":"true","text":" | "},{"color":"gold","bold":true,"text":"Insane模式已"},{"color":"red","bold":true,"text":"开启"}]
execute if score game1 nife_stats matches 0 at @e[tag=nife_tg_lobby] run title @a[distance=0..,gamemode=adventure] actionbar [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" | "},{"color":"gold","bold":"true","text":"当前队列人数 : "},{"color":"gold","score":{"objective":"nife_stats","name":"player_count"}},{"color":"gray","bold":"true","text":" | "},{"text":"最小开始人数 : ","color":"gold","bold":"true"},{"color":"gold","score":{"objective":"nife_stats","name":"nife_tglobby_queuestart"}}]
execute if score game1 nife_stats matches 0 at @e[tag=nife_tg_lobby] run effect give @a[distance=0..] minecraft:resistance 1 255 true
#实时检测玩家数量
scoreboard players set player_count nife_stats 0
execute at @a[tag=nife_tg_queue] run particle minecraft:crit ~ ~2 ~ 0 0 0 0 1 normal
#计算玩家数量
execute at @a[tag=nife_tg_queue] run scoreboard players add player_count nife_stats 1
#nife_tglobby_countdown:检测到人数之后的倒计时
#nife_tglobby_queuestart:开始,0:未开始,1:开始
execute if score player_count nife_stats >= nife_tglobby_queuestart nife_stats if score nife_tglobby_countdown nife_stats matches 0 at @e[tag=nife_tg_lobby] run function towngame:lobby/queue_countdown
execute if score player_count nife_stats < nife_tglobby_queuestart nife_stats at @e[tag=nife_tg_lobby] run function towngame:lobby/stop
#大厅倒计时
execute if score nife_tglobby_title nife_stats matches 1 run scoreboard players add nife_tglobby_title nife_time 1
#倒计时时间
execute if score nife_tglobby_countdown nife_time matches 160 run function towngame:lobby/start
#倒计时状态检测
execute if score nife_tglobby_title nife_stats matches 1 if score game1 nife_stats matches 0 run function towngame:lobby/countdown
#函数插件调起
function #towngame:plugin.lobbymain