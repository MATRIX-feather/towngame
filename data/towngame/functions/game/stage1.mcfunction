#恢复玩家状态
effect give @a[tag=nife_game_1] minecraft:saturation 5 1
effect give @a[tag=nife_game_1] minecraft:regeneration 10 5
#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 1250 25
execute at @e[tag=game1_spread] run worldborder damage amount 0.1
#显示标题
title @a[tag=nife_game_1] title [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage1.title"},{"text":"⚠","color":"red","bold":true}]
title @a[tag=nife_game_1] subtitle [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage1.subt"},{"text":"⚠","color":"red","bold":true}]
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
execute at @a[tag=nife_game_1,gamemode=adventure] run function towngame:game/event/supply