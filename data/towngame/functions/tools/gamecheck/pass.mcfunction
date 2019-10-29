function towngame:tools/reset
scoreboard players set tg_set_point nife_stats 0
tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"green","bold":"true","translate":"tg.tools.gamecheck.successmsg"}]
execute at @e[tag=spread] run forceload add ~ ~