#重设值
scoreboard players set nife_tglobby_title nife_time 0
scoreboard players set nife_tglobby_title nife_stats 0
scoreboard players set nife_tglobby_queuestart nife_stats 1
scoreboard players set towngame_1s nife_time 20
scoreboard players set nife_tg_lock nife_stats 0
scoreboard players set nife_tglobby_countdown nife_time 600
scoreboard players set game1 nife_stats 0
scoreboard players set nife_tg_lock nife_stats 0
scoreboard players set nife_tg_insanemode nife_tg_settings 0
scoreboard players set nife_tg_1steventtime nife_tg_settings 600
scoreboard players set nife_tg_borderchangetime nife_tg_settings 1200
scoreboard players set nife_tg_resizetime nife_tg_settings 3600
#重设bossbar
bossbar set nife:tg_lobby_countdownbar name [{"text":"距离游戏开始还有 "},{"color":"gold","bold":"true","score":{"objective":"nife_time","name":"nife_tglobby_bossbarnum"}},{"text":" 秒"},{"text":" | ","color":"red","bold":true},{"text":"当前队列人数 : "},{"bold":"true","color":"gold","score":{"objective":"nife_stats","name":"player_count"}},{"color":"red","bold":"true","text":" | "},{"color":"gold","bold":true,"text":"Insane模式已"},{"color":"yellow","bold":true,"text":" !状态未知"}]