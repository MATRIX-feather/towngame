#创建计分板并重置数据
scoreboard objectives add nife_stats dummy {"text":"nife_stats | 状态/统计数据"}
scoreboard objectives add nife_deaths deathCount {"text":"nife_deaths"}
scoreboard objectives add nife_time dummy {"text":"nife_time | 计时相关"}
scoreboard objectives add nife_tg_settings dummy {"text":"nife_settings | 游戏设置"}
scoreboard objectives add nife_pos_X dummy {"text":"nife_pos_X | 坐标X"}
scoreboard objectives add nife_pos_Y dummy {"text":"nife_pos_Y | 坐标Y"}
scoreboard objectives add nife_pos_Z dummy {"text":"nife_pos_Z | 坐标Z"}
scoreboard objectives add nife_tg_about trigger {"text":"nife_tg_trigger | 玩家触发"}
scoreboard objectives add nife_P-health health {"text":"nife_P-health | 玩家生命值,只读"}
scoreboard players set nife_tglobby_countdown nife_stats 0
#初始化bossbar
bossbar add nife:tg_lobby_countdownbar {"text":"剩余时间"}
bossbar set nife:tg_lobby_countdownbar max 30
bossbar set nife:tg_lobby_countdownbar value 0
bossbar set nife:tg_lobby_countdownbar color white
bossbar set nife:tg_lobby_countdownbar players @a[tag=nife_game_1]
tag @a remove nife_tg_queue
tag @a remove nife_tg_queue_exit
#函数插件调起
function #towngame:plugin.onload
#UI
tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","text":"NiFeather Towngame已被加载"}]
function towngame:about
#tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"gold","bold":"true","text":"版本 : generic,release @ 11.0.0-20190915"}]
#tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"gold","bold":"true","text":"作者 : NiFeather"}]