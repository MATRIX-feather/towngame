#计算
function towngame:custom/transfervalues
#显示
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.1stevent","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_1stevent_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.borderchange","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_borderchangetime_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.resizetime","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_resizetime_display"}} , {"translate":"tg.time.sec"}]}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.queue_start","with":[{"color":"gold","bold":"true","score":{"objective":"nife_tg_settings","name":"nife_tglobby_queuestart"}}]}]
execute if score dm_time nife_tg_settings matches 1.. run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.deathmatch","with":[{"translate":"tg.stage_deathmatch.title"},{"color":"gold","bold":"true","score":{"objective":"nife_tg_settings","name":"dm_time"}}]}]
execute if score nife_tg_insanemode nife_tg_settings matches 1 run tellraw @a[distance=0..] [{"color":"red","bold":true,"translate":"tg.panel.head"},{"translate":"tg.insanemode"},{"translate":"tg.on"}]
execute if score nife_tg_insanemode nife_tg_settings matches 0 run tellraw @a[distance=0..] [{"color":"gray","bold":true,"translate":"tg.panel.head"},{"translate":"tg.insanemode"},{"translate":"tg.off"}]
execute if score nife_tg_lock nife_stats matches 0 run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"bold":"true","translate":"tg.custom.appiled"}]
execute if score nife_tg_lock nife_stats matches 1 run tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"color":"red","bold":"true","translate":"tg.custom.err.locked"}]
tellraw @a[distance=0..] [{"translate":"tg.panel.head","color":"gray","bold":"true"}]