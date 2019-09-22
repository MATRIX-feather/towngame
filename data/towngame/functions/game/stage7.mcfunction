#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 100 20
#显示标题
title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7l⚠ 警告 ⚠"}
title @a[tag=nife_game_1] subtitle {"text":"\u00a7c\u00a7l⚠ 毒圈正在收缩,请注意躲避 ⚠"}
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
kill @e[type=item]
bossbar set nife:game_1 color red
#重设倒计时时间
scoreboard players set tick_Current nife_time 2400