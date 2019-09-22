#由tick函数调起,达到条件后循环执行
#1min = 1200tick | 30sec = 600tick | 10sec = 200tick | 20sec = 400tick
#缩圈检测
scoreboard players remove tick_Current nife_time 1
execute if score tick_Current nife_time matches 0..0 run function towngame:game/event/borderchange
#玩家死亡
execute if entity @r[scores={nife_deaths=1..},tag=nife_game_1] run function towngame:game/event/death
execute at @a[tag=nife_game_1] run gamemode spectator @a[distance=0..,tag=!nife_game_1]
#去除插在地上的箭
kill @e[type=arrow,nbt={inGround:1b}]
#其他任务
clear @a[tag=nife_game_1] minecraft:chest
clear @a[tag=nife_game_1] minecraft:glass_bottle
#子任务 道具检测
function towngame:game/var/main
function nifeather_updater:update/main
#tick_Current自减
scoreboard players operation towngame_bossbar_num nife_time = tick_Current nife_time
scoreboard players operation towngame_bossbar_num nife_time /= towngame_1s nife_time
bossbar set nife:game_1 name [{"color":"white","bold":true,"text":"距离下一次缩圈事件还有 "},{"color":"white","score":{"objective":"nife_time","name":"towngame_bossbar_num"}},{"text":" 秒"},{"text":" | "},{"text":"边界大小 : "},{"color":"white","score":{"objective":"nife_stats","name":"border_size"}},{"text":" @ 第 "},{"color":"white","score":{"name":"nife_tg_border","objective":"nife_stats"}},{"text":" 次缩圈"}]
execute at @a[tag=nife_game_1,limit=1] store result bossbar nife:game_1 value run worldborder get
execute at @a[tag=nife_game_1,limit=1] store result score border_size nife_stats run worldborder get
execute if score border_size nife_stats matches 1000.. run bossbar set nife:game_1 color green
execute if score border_size nife_stats matches 500..999 run bossbar set nife:game_1 color white
execute if score border_size nife_stats matches 200..499 run bossbar set nife:game_1 color yellow
execute if score border_size nife_stats matches ..199 run bossbar set nife:game_1 color red
#actionbar的坐标显示
execute as @a[tag=nife_game_1] store result score @s nife_pos_X run data get entity @s Pos[0]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Y run data get entity @s Pos[1]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Z run data get entity @s Pos[2]
execute as @a[tag=nife_game_1] if score @s nife_P-health matches ..40 run function towngame:game/ui/health_less
execute as @a[tag=nife_game_1] if score @s nife_P-health matches 41.. run function towngame:game/ui/health_normal
#execute if score nife_tg_border nife_stats matches 0 run effect give @a[tag=nife_game_1] minecraft:blindness 3 0
#函数插件调起
function #towngame:plugin.gametick