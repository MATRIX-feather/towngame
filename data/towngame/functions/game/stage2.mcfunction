#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 1000 25
#显示标题
title @a[tag=nife_game_1] title ""
title @a[tag=nife_game_1] subtitle [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stagechange.subt"},{"text":"⚠","color":"red","bold":true}]
#音效及空投
kill @e[type=item]