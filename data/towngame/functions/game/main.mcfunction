#由tick函数调起,达到条件后循环执行
#tick任务
scoreboard players remove tick_Current nife_time 1
execute if score tick_Current nife_time matches 0..0 run function towngame:game/event/borderchange
scoreboard players operation towngame_bossbar_num nife_time = tick_Current nife_time
scoreboard players operation towngame_bossbar_num nife_time /= towngame_1s nife_time
#玩家死亡
execute if entity @r[scores={nife_deaths=1..},tag=nife_game_1] run function towngame:game/event/death
#设置其他人为旁观模式
execute at @a[tag=nife_game_1] run gamemode spectator @a[distance=0..,tag=!nife_game_1]
#去除插在地上的箭
kill @e[type=arrow,nbt={inGround:1b}]
execute as @e[type=minecraft:trident,nbt={inGround:1b}] run data merge entity @s {Glowing:1b,Fire:2s}
#其他任务
clear @a[tag=nife_game_1] minecraft:chest
clear @a[tag=nife_game_1] minecraft:glass_bottle
#子任务 道具检测
execute if score nife_tg_gadgets nife_tg_settings matches 1 as @a[scores={nife_var_use=1..}] at @a[scores={nife_var_use=1..}] run function towngame:game/gadgets/main
execute if score nife_tg_gadgets nife_tg_settings matches 0 as @a[scores={nife_var_use=1..}] at @a[scores={nife_var_use=1..}] run function towngame:game/gadgets/disabled
function nifeather_updater:ingame_loop
#bossbar1务
execute at @a[tag=nife_game_1,limit=1] store result bossbar nife:game_1 value run worldborder get
execute at @a[tag=nife_game_1,limit=1] store result score border_size nife_stats run worldborder get
execute if score nife_tg_border nife_stats matches 0.. run bossbar set nife:game_1 name {"color":"gold","bold":true,"translate":"tg.main.bbtext","with":[{"color":"white","score":{"objective":"nife_time","name":"towngame_bossbar_num"}},{"translate":"tg.time.sec"},{"color":"white","score":{"objective":"nife_stats","name":"border_size"}},{"color":"white","score":{"name":"nife_tg_border","objective":"nife_stats"}},{"color":"green","score":{"objective":"nife_stats","name":"player_count"}}]}
execute if score nife_tg_border nife_stats matches -1 run bossbar set nife:game_1 name {"color":"gold","bold":true,"translate":"tg.main.bbtext.dm","with":[{"color":"red","translate":"tg.stage_deathmatch.title"},{"translate":"tg.panel.head"},{"color":"white","score":{"objective":"nife_stats","name":"border_size"}},{"color":"gold","score":{"objective":"nife_stats","name":"player_count"}}]}
execute if score border_size nife_stats matches 1250.. run bossbar set nife:game_1 color green
execute if score border_size nife_stats matches 500..1241 run bossbar set nife:game_1 color white
execute if score border_size nife_stats matches 250..499 run bossbar set nife:game_1 color yellow
execute if score border_size nife_stats matches ..249 run bossbar set nife:game_1 color red
#actionbar的坐标显示
execute as @a[tag=nife_game_1] store result score @s nife_pos_X run data get entity @s Pos[0]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Y run data get entity @s Pos[1]
execute as @a[tag=nife_game_1] store result score @s nife_pos_Z run data get entity @s Pos[2]
execute as @a[tag=nife_game_1] if score @s nife_P-health matches ..40 run function towngame:game/ui/health_less
execute as @a[tag=nife_game_1] if score @s nife_P-health matches 41.. run function towngame:game/ui/health_normal
execute if score nife_tg_border nife_stats matches 0 run effect give @a[tag=nife_game_1] minecraft:slow_falling 1 1
#函数插件调起
function #towngame:plugin.gametick