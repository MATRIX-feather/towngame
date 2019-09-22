scoreboard players set nife_tglobby_countdown nife_time 600
scoreboard players set nife_tglobby_countdown nife_stats 1
execute if score nife_tglobby_countdown nife_stats matches 1 run tellraw @a[distance=0..] [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","text":"玩家数量已满足最低开始人数!倒计时已开始"}]
function #towngame:plugin.event.full_queue