#计算
function towngame:custom/transfervalues
#显示
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.1stevent","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_1stevent_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.borderchange","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_borderchangetime_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.resizetime","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_resizetime_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.queue_start","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tglobby_queuestart"}}]}]
execute if score dm_time nife_stats matches 1.. run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.deathmatch","with":[{"translate":"tg.stage_deathmatch.title"},{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"dm_time"}}]}]
execute if score dm_time nife_stats matches 0 run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.deathmatch.warn","with":[{"translate":"tg.warn","color":"red","bold":true},{"translate":"tg.name"},{"translate":"tg.stage_deathmatch.title"}]}]
execute if score nife_tg_lock nife_stats matches 0 run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.appiled"}]
execute if score nife_tg_lock nife_stats matches 1 run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"color":"red","bold":"true","translate":"tg.custom.err.locked"}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"}]