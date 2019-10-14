#1000tick
#execute at @a[tag=nife_game_1] run spreadplayers ~ ~ 1 1 false @p[tag=nife_game_1]
#恢复玩家状态
#effect give @a[tag=nife_game_1] minecraft:saturation 10 1
#effect give @a[tag=nife_game_1] minecraft:regeneration 10 5
#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 900 20
#显示标题
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.warn"},{"text":"⚠","color":"red","bold":true}]
title @a[tag=nife_game_1] subtitle [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stagechange.subt"},{"text":"⚠","color":"red","bold":true}]
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
kill @e[type=item]