#Towngame 标题任务检测
#0:未开始
#1:开始
#2:结束
execute if score nife_tg_title nife_stats matches 1..3 run scoreboard players add nife_tg_title nife_time 1
execute if score game1 nife_stats matches 0 at @e[tag=nife_tg_point] run data merge block ~ ~ ~ {LootTable:"chest/empty"}
#towngame游戏检测任务
execute if score game1 nife_stats matches 1 run function towngame:game/main
execute if score game1 nife_stats matches 0 run function towngame:lobby/main
#TowngameLobby 标题任务检测
#0:无
#1:开始游戏
#2:结束游戏
#3:大厅倒计时
execute if score nife_tg_title nife_stats matches 1 run execute at @e[tag=nife_tg_lobby] run function towngame:game/ui/start
execute if score nife_tg_title nife_stats matches 2 run execute at @e[tag=nife_tg_lobby] run function towngame:game/ui/end
scoreboard players enable @a nife_tg_about
execute as @a[scores={nife_tg_about=1}] run function towngame:about
#Towngame设点检测
execute if score tg_set_point nife_stats matches 1.. as @e[tag=nife_tg_point] run data merge entity @s {Invisible:0}
#fix:多世界玩家掉线错过endgame后背包物品没清
execute if entity @r[tag=nife_game_1] if score game1 nife_stats matches 0 run function towngame:game/event/wronglogin