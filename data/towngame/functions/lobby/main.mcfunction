#检测玩家是否要加入队列
execute at @e[tag=nife_tg_lobby] if entity @a[distance=..0.5] if score game1 nife_stats matches 0 run function towngame:lobby/event/join_queue
#检测队列时间
bossbar set nife:tg_lobby_countdownbar players @a[tag=nife_tg_queue]
execute if score nife_tglobby_countdown nife_stats matches 1 run function towngame:lobby/calccountdown
execute if score nife_tg_insanemode nife_tg_settings matches 0 run bossbar set nife:tg_lobby_countdownbar name {"bold":true,"translate":"tg.lobby.bossbar","with":[{"color":"gold","bold":"true","score":{"objective":"nife_time","name":"nife_tglobby_bossbarnum"}} , {"translate":"tg.time.sec"} , {"bold":"true","color":"gold","score":{"objective":"nife_time","name":"nife_tglobby_countD"}} , {"translate":"tg.insanemode"} , {"translate":"tg.off"} ]}
execute if score nife_tg_insanemode nife_tg_settings matches 1 run bossbar set nife:tg_lobby_countdownbar name {"bold":true,"translate":"tg.lobby.bossbar","with":[{"color":"gold","bold":"true","score":{"objective":"nife_time","name":"nife_tglobby_bossbarnum"}} , {"translate":"tg.time.sec"} , {"bold":"true","color":"gold","score":{"objective":"nife_time","name":"nife_tglobby_countD"}} , {"translate":"tg.insanemode"} , {"color":"red","translate":"tg.on"} ]}
execute if score game1 nife_stats matches 0 at @e[tag=nife_tg_lobby] run title @a[distance=0..] actionbar {"color":"gray","bold":true,"translate":"tg.lobby.actionbar","with":[{"color":"dark_aqua","bold":true,"translate":"tg.name"},{"color":"gold","score":{"objective":"nife_stats","name":"player_count"}},{"color":"gold","score":{"objective":"nife_tg_settings","name":"nife_tglobby_queuestart"}}]}
execute if score game1 nife_stats matches 0 at @e[tag=nife_tg_lobby] run effect give @a[distance=0..] minecraft:resistance 1 255 true
#实时检测玩家数量
scoreboard players set player_count nife_stats 0
execute at @a[tag=nife_tg_queue] run particle minecraft:crit ~ ~2 ~ 0 0 0 0 1 normal
#计算玩家数量
execute at @a[tag=nife_tg_queue] run scoreboard players add player_count nife_stats 1
#nife_tglobby_countdown:检测到人数之后的倒计时
#nife_tglobby_queuestart:开始,0:未开始,1:开始
execute if score player_count nife_stats >= nife_tglobby_queuestart nife_tg_settings if score nife_tglobby_countdown nife_stats matches 0 at @e[tag=nife_tg_lobby,limit=1] run function towngame:lobby/queue_countdown
execute if score player_count nife_stats < nife_tglobby_queuestart nife_tg_settings at @e[tag=nife_tg_lobby,limit=1] run function towngame:lobby/stop
#大厅倒计时
execute if score nife_tglobby_title nife_stats matches 1 run scoreboard players add nife_tglobby_title nife_time 1
#倒计时时间
execute if score nife_tglobby_countdown nife_time matches 160 run function towngame:lobby/start
#计时任务
execute if score nife_tglobby_count nife_stats matches 1 run function towngame:lobby/count.loop
#倒计时状态检测
execute if score nife_tglobby_title nife_stats matches 1 if score game1 nife_stats matches 0 run function towngame:lobby/countdown
#函数插件调起
function #towngame:plugin.lobbymain