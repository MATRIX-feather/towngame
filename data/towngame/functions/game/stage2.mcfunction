#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 1000 25
#显示标题
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.warn"},{"text":"⚠","color":"red","bold":true}]
title @a[tag=nife_game_1] subtitle [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stagechange.subt"},{"text":"⚠","color":"red","bold":true}]
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
kill @e[type=item]