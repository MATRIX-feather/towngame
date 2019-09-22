#清理玩家鞘翅并中断移动
clear @a[tag=nife_game_1] minecraft:elytra
#恢复玩家状态
effect give @a[tag=nife_game_1] minecraft:saturation 10 1
effect give @a[tag=nife_game_1] minecraft:regeneration 10 5
#设置边界
execute at @a[tag=nife_game_1,limit=1] run worldborder set 1100 20
#显示标题
title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7l⚠ 开始缩圈 ⚠"}
title @a[tag=nife_game_1] subtitle {"text":"\u00a7c\u00a7l⚠ 祝君好运 ⚠"}
#音效及空投
execute at @a[tag=nife_game_1] run playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nife_game_1] ~ ~ ~ 10 1
execute if score nife_tg_insanemode nife_tg_settings matches 1 at @a[tag=nife_game_1,gamemode=adventure] run function towngame:game/event/supply_insane
execute if score nife_tg_insanemode nife_tg_settings matches 0 at @a[tag=nife_game_1,gamemode=adventure] run function towngame:game/event/supply
title @a[tag=nife_game_1] actionbar {"text":"\u00a7c\u00a7l⚠ 空投已释放,看你的附近 ⚠"}
tellraw @a[tag=nife_game_1] {"text":"\u00a7c\u00a7l⚠ 空投已释放,看你的附近 ⚠"}
tellraw @a[tag=nife_game_1] {"text":"\u00a7c\u00a7l⚠ 鞘翅已被回收 ⚠"}