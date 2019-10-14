scoreboard players set nife_tglobby_countdown nife_time 600
scoreboard players set nife_tglobby_countdown nife_stats 1
function #towngame:plugin.event.full_queue
execute if score nife_tglobby_countdown nife_stats matches 1 run tellraw @a[distance=0..] [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","translate":"tg.lobby.queue_countdown"}]