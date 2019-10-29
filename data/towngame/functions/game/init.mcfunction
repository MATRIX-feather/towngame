#开始游戏
scoreboard players set game1 nife_stats 1
#大厅进程的一些剩余东西并且给予进度
function towngame:platform_detect
advancement grant @a[tag=nife_tg_queue] only towngame:tgroot
execute at @a[tag=nife_tg_queue] run scoreboard players add plyer_count nife_stats 1
execute if score player_count nife_stats matches 3.. run tag @a[tag=nife_tg_queue] add nife_tgadv_enabled
execute if score player_count nife_stats matches ..2 run tellraw @a[tag=nife_tg_queue] [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.init.warn.noadv"}]
execute if score player_count nife_stats matches 1 run tellraw @a[tag=nife_tg_queue] [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","translate":"tg.init.warn.singleplayer"}]
execute at @e[tag=nife_tg_lobby] run gamemode spectator @a[distance=0..,tag=!nife_tg_queue]
#锁定自定义值;
scoreboard players set nife_tg_lock nife_stats 1
#如果只有一个人,则显示警告
##重置被大厅进程引用的各种玩意
##加tag
tag @a[tag=nife_tg_queue] add nife_game_1
tag @a[tag=nife_game_1] remove nife_tg_queue
#初始化边界与游戏规则
execute at @e[tag=game1_spread] run worldborder damage amount 0
execute at @e[tag=game1_spread] run worldborder center ~ ~
execute at @e[tag=game1_spread] run worldborder set 1
execute at @e[tag=game1_spread] run worldborder set 1500 20
execute at @e[tag=game1_spread] run time set noon
execute at @e[tag=game1_spread] run difficulty hard
execute at @e[tag=game1_spread] run gamerule mobGriefing false
execute at @e[tag=game1_spread] run gamerule doMobSpawning false
execute at @e[tag=game1_spread] run gamerule spectatorsGenerateChunks false
#初始化玩家设置
clear @a[tag=nife_game_1]
effect clear @a[tag=nife_game_1]
gamemode adventure @a[tag=nife_game_1]
execute at @e[tag=nife_tg_lobby] run spawnpoint @a[tag=nife_game_1] ~ ~ ~10
effect give @a[tag=nife_game_1] minecraft:health_boost 1000000 30 true
effect give @a[tag=nife_game_1] minecraft:blindness 3 1 true
effect give @a[tag=nife_game_1] minecraft:resistance 40 255
execute at @e[tag=game1_spread] run spreadplayers ~ ~ 450 451 false @a[tag=nife_game_1]
execute at @a[tag=nife_game_1] run tp @p ~ 255 ~
xp set @a[tag=nife_game_1] 60 levels
execute if score nife_tg_insanemode nife_tg_settings matches 1 run xp set @a[tag=nife_game_1] 32767 levels
#初始化计分板
#tick_Current : 游戏刻计时
#nife_tg_title : 游戏标题相关
#nife_tg_bordertime 一次缩圈的时间,用于bossbar的UI
#nife_tg_bordertime:
#0:标准缩圈
#1:重新缩圈
#towngame_1s 一秒20tick,用于UI
#nife_tg_border 缩圈状态,用于游戏运行
#player_count : 玩家数量
scoreboard players set @a[tag=nife_game_1] nife_deaths 0
scoreboard players operation tick_Current nife_time = nife_tg_1steventtime nife_tg_settings
scoreboard players set nife_tg_title nife_stats 1
scoreboard players set nife_tg_title nife_time 0
scoreboard players set nife_tg_bordertime nife_stats 0
scoreboard players set towngame_1s nife_time 20
scoreboard players set nife_tg_border nife_stats 0
scoreboard players set resize_times nife_stats 0
function towngame:lobby/event/reset_count
#初始化bossbar&标题栏
bossbar add nife:game_1 {"text":""}
bossbar set nife:game_1 max 1500
bossbar set nife:game_1 color white
bossbar set nife:game_1 style progress
bossbar set nife:game_1 players @a[tag=nife_game_1]
bossbar set nife:tg_lobby_countdownbar players
execute as @e[tag=game1_spread] store result score nife_tg_bcenterZ nife_pos_Z run data get entity @s Pos[2]
execute as @e[tag=game1_spread] store result score nife_tg_bcenterX nife_pos_X run data get entity @s Pos[0]
function towngame:game/ui/startmsg
#计算玩家数量
#scoreboard players set player_count nife_stats 0
#execute at @a[tag=nife_game_1] run scoreboard players add player_count nife_stats 1
#函数插件调起
function #towngame:plugin.init
