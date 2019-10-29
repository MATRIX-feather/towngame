#由地图内命令方块或玩家调起
#1:开启
#0:关闭
#off-process
execute if score nife_tg_lock nife_stats matches 0 if score nife_tg_insanedef nife_tg_settings matches 1 run scoreboard players set nife_tg_insanedef nife_tg_settings 2
#on
execute if score nife_tg_lock nife_stats matches 0 if score nife_tg_insanedef nife_tg_settings matches 0 run scoreboard players set nife_tg_insanedef nife_tg_settings 1
#off-process
execute if score nife_tg_lock nife_stats matches 0 if score nife_tg_insanedef nife_tg_settings matches 2 run scoreboard players set nife_tg_insanedef nife_tg_settings 0
function towngame:custom/displayvalues