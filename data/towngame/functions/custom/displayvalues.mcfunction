#计算
function towngame:custom/transfervalues
#显示
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"}]
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"bold":"true","text":"现在第一次缩圈前的等待时间为 "},{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_1stevent_display"}},{"bold":"true","text":" 秒"}]
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"bold":"true","text":"现在第2~7次缩圈前的等待时间为 "},{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_borderchangetime_display"}},{"bold":"true","text":" 秒"}]
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"bold":"true","text":"最后一次缩圈后重新缩圈的等待时间为 "},{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_resizetime_display"}},{"bold":"true","text":" 秒"}]
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"bold":"true","text":"现在的队列最小人数为 "},{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tglobby_queuestart"}}]
execute if score nife_tg_lock nife_stats matches 0 run tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"bold":"true","text":"所有设置将会在下一次开始时被应用"}]
execute if score nife_tg_lock nife_stats matches 1 run tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"},{"color":"red","bold":"true","text":"错误:你不能在队列中仍有玩家或游戏正在进行时更改游戏设置"}]
tellraw @a[distance=0..] [{"text":"| ","color":"gray","bold":"true"}]