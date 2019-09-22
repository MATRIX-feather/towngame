#4000tick
#恢复玩家状态
#effect give @a[tag=nife_game_1] minecraft:saturation 10 1
#effect give @a[tag=nife_game_1] minecraft:regeneration 10 5
#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 300 20
#显示标题
title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7l⚠ 警告 ⚠"}
title @a[tag=nife_game_1] subtitle {"text":"\u00a7c\u00a7l⚠ 毒圈正在收缩,请注意躲避 ⚠"}
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
kill @e[type=item]