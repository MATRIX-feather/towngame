execute if score nife_tglobby_countdown nife_stats matches 1 run tellraw @a[distance=0..] [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.lobby.abort_queue_countdown"}]
scoreboard players set nife_tglobby_countdown nife_stats 0
scoreboard players set nife_tglobby_bossbarnum nife_time 233
scoreboard players set nife_tglobby_title nife_stats 0
#解锁自定义值
execute if score game1 nife_stats matches 0 run scoreboard players set nife_tg_lock nife_stats 0