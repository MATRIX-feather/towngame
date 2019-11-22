#由tick函数调起,达到条件后循环执行
#用来存放游戏内部逻辑
#define entity tick_Current 游戏tick,倒数
#region tick任务
scoreboard players remove tick_Current nife_time 1
execute if score tick_Current nife_time matches 0..0 run function towngame:game/event/borderchange
scoreboard players operation towngame_bossbar_num nife_time = tick_Current nife_time
scoreboard players operation towngame_bossbar_num nife_time /= towngame_1s nife_time
#玩家死亡
execute if entity @r[scores={nife_deaths=1..},tag=nife_game_1] run function towngame:game/event/death
#设置其他人为旁观模式
execute at @a[tag=nife_game_1] run gamemode spectator @a[distance=0..,tag=!nife_game_1]
#去除插在地上的箭和三叉戟
kill @e[type=arrow,nbt={inGround:1b}]
execute as @e[type=minecraft:trident,nbt={inGround:1b}] run data merge entity @s {Glowing:1b,Fire:2s}
#其他任务
clear @a[tag=nife_game_1] minecraft:chest
clear @a[tag=nife_game_1] minecraft:glass_bottle
execute if score tick_Current nife_time matches 200 run function towngame:game/ui/borderwarn
#道具停顿检测
execute as @a[scores={nife_lazer_retry=21837..}] run function towngame:game/gadgets/error/lazer_retrytime
#道具检测
execute as @a[tag=lazer_retry,limit=1] at @a[tag=lazer_retry] run function towngame:game/gadgets/lazer.boot
execute if score nife_tg_gadgets nife_tg_settings matches 1 as @a[scores={nife_var_use=1..}] at @a[scores={nife_var_use=1..}] run function towngame:game/gadgets/main
execute if score nife_tg_gadgets nife_tg_settings matches 0 as @a[scores={nife_var_use=1..}] at @a[scores={nife_var_use=1..}] run function towngame:game/gadgets/disabled
#函数插件调起
function #towngame:plugin.gametick