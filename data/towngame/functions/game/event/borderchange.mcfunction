#缩圈事件,由main调起,非循环
scoreboard players add nife_tg_border nife_stats 1
execute if score nife_tg_border nife_stats matches 1..1 run function towngame:game/stage1
execute if score nife_tg_border nife_stats matches 2..2 run function towngame:game/stage2
execute if score nife_tg_border nife_stats matches 3..3 run function towngame:game/stage3
execute if score nife_tg_border nife_stats matches 4..4 run function towngame:game/stage4
execute if score nife_tg_border nife_stats matches 5..5 run function towngame:game/stage5
execute if score nife_tg_border nife_stats matches 6..6 run function towngame:game/stage6
execute if score nife_tg_border nife_stats matches 7..7 run function towngame:game/stage7
execute if score nife_tg_border nife_stats matches 7..7 run scoreboard players set nife_tg_bordertime nife_stats 2
execute if score nife_tg_border nife_stats matches 8..8 run function towngame:game/stage_resize
execute if score resize_times nife_stats >= dm_time nife_stats run function towngame:game/stage_deathmatch
#箱子填充事件
execute if score nife_tg_border nife_stats matches 1..7 if score nife_tg_insanemode nife_tg_settings matches 1 run function towngame:game/event/chestrefill_insane
execute if score nife_tg_border nife_stats matches 1..7 if score nife_tg_insanemode nife_tg_settings matches 0 run function towngame:game/event/chestrefill
#重设边界
execute at @e[type=armor_stand,tag=spread] run worldborder damage amount 0.1
execute at @e[type=armor_stand,tag=spread] run worldborder damage buffer 0
#重置tick
#nife_tg_bordertime:
#0:标准缩圈
#1:重新缩圈时间
#2:缩圈等待时间
#3:死斗模式
execute if score nife_tg_bordertime nife_stats matches 0 run scoreboard players operation tick_Current nife_time = nife_tg_borderchangetime nife_tg_settings
execute if score nife_tg_bordertime nife_stats matches 1 run scoreboard players set tick_Current nife_time 60
execute if score nife_tg_bordertime nife_stats matches 2 run scoreboard players operation tick_Current nife_time = nife_tg_resizetime nife_tg_settings
execute if score nife_tg_bordertime nife_stats matches 3 run scoreboard players set tick_Current nife_time -1
scoreboard players set nife_tg_bordertime nife_stats 0
#函数插件调起
function #towngame:plugin.event.borderchange