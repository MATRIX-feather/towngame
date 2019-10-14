#添加tag
tag @a[tag=nife_game_1,gamemode=adventure] add town_rank1
#结束计时
scoreboard players set game1 nife_stats 0
#播放声音
playsound minecraft:entity.ender_dragon.death ambient @a[tag=nife_game_1] ~ ~ ~ 100 1
#显示标题
scoreboard players set nife_tg_title nife_stats 2
scoreboard players set nife_tg_title nife_time 0
#设置旁观者
execute at @a[tag=nife_game_1] run gamemode adventure @a[distance=0..]
#设置边界
execute at @e[tag=spread] run worldborder set 1300 10
execute at @e[tag=spread] run worldborder center ~ ~
execute at @e[tag=spread] run worldborder damage amount 0
#设置bossbar
bossbar set nife:game_1 value 0
bossbar set nife:game_1 color white
#重置地图数据
execute at @e[tag=game1_atk] run data merge block ~ ~ ~ {LootTable:"chest/empty"}
execute at @e[tag=game1_def] run data merge block ~ ~ ~ {LootTable:"chest/empty"}
execute at @e[tag=spread] run time set day
kill @e[tag=towngame_entity]
execute at @e[tag=nife_tg_lobby] run kill @e[type=arrow,distance=0..]
execute at @e[tag=nife_tg_lobby] run kill @e[type=item,distance=0..]
#排名公告
tellraw @a [{"text":"| ","color":"gray","bold":"true"},{"text":"                  Towngame"}]
tellraw @a [{"text":"| ","color":"gray","bold":"true"},{"text":" 第一名:","color":"gold","bold":true},{"color":"gold","bold":true,"selector":"@a[tag=nife_game_1,tag=town_rank1]"}]
tellraw @a [{"text":"| ","color":"gray","bold":"true"},{"text":" 第二名:","color":"blue","bold":true},{"color":"blue","bold":true,"selector":"@a[tag=nife_game_1,tag=town_rank2]"}]
tellraw @a [{"text":"| ","color":"gray","bold":"true"},{"text":" 第三名:","color":"green","bold":true},{"color":"green","bold":true,"selector":"@a[tag=nife_game_1,tag=town_rank3]"}]
tellraw @a [{"text":"| ","color":"gray","bold":"true"}]
tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","text":"游戏已结束,第一名为 "},{"selector":"@a[tag=nife_game_1,tag=town_rank1]"},{"text":" !"}]
#重置玩家数据
clear @a[tag=nife_game_1]
effect clear @a[tag=nife_game_1]
effect give @a[tag=nife_game_1] minecraft:saturation 10 1
xp set @a[tag=nife_game_1] 0 levels
execute at @e[tag=nife_tg_lobby] run tp @a[distance=0..] ~ ~ ~10
#发放奖励
advancement grant @a[tag=nife_game_1,tag=town_rank1,tag=nife_tgadv_enabled] only towngame:rank/1 rank
execute if score nife_tg_insanemode nife_tg_settings matches 1 run advancement grant @a[tag=nife_game_1,gamemode=adventure,tag=nife_tgadv_enabled] only towngame:insane_rank/1
advancement grant @a[tag=nife_game_1,tag=town_rank2,tag=nife_tgadv_enabled] only towngame:rank/2 rank
execute if score nife_tg_insanemode nife_tg_settings matches 1 run advancement grant @a[tag=nife_game_1,gamemode=adventure,tag=nife_tgadv_enabled,tag=town_rank2] only towngame:insane_rank/2
advancement grant @a[tag=nife_game_1,tag=town_rank3,tag=nife_tgadv_enabled] only towngame:rank/3 rank
execute if score nife_tg_insanemode nife_tg_settings matches 1 run advancement grant @a[tag=nife_game_1,gamemode=adventure,tag=nife_tgadv_enabled,tag=town_rank3] only towngame:insane_rank/3
gamemode adventure @a[tag=nife_game_1]
#函数插件调起
function #towngame:plugin.endgame
#去除tag
tag @a remove nife_game_1
tag @a remove town_rank1
tag @a remove town_rank2
tag @a remove town_rank3
tag @a remove nife_tgadv_enabled


#善后工作
#  修复bossbar显示错误
bossbar set nife:game_1 players @a[tag=nife_game_1]
#   设置大厅队列时间
scoreboard players set nife_tg_lock nife_stats 0
scoreboard players set nife_tglobby_countdown nife_time 4660
bossbar set nife:tg_lobby_countdownbar visible true
#解锁自定义值
scoreboard players set nife_tg_lock nife_stats 0