#预设
scoreboard players set nife_game1_hascenter nife_stats 0
scoreboard players set nife_game1_has_atk nife_stats 0
scoreboard players set nife_game1_has_def nife_stats 0
scoreboard players set nife_game1_has_anv nife_stats 0
scoreboard players set nife_game1_has_lobby nife_stats 0
#设置
execute if entity @e[tag=game1_spread] run scoreboard players set nife_game1_hascenter nife_stats 1
execute if entity @e[tag=game1_atk] run scoreboard players set nife_game1_has_atk nife_stats 1
execute if entity @e[tag=game1_def] run scoreboard players set nife_game1_has_def nife_stats 1
execute if entity @e[tag=game1_anv] run scoreboard players set nife_game1_has_anv nife_stats 1
execute if entity @e[tag=nife_tg_lobby] run scoreboard players set nife_game1_has_lobby nife_stats 1
#检查
execute if score nife_game1_hascenter nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.tools.gamecheck.failmsg.1"},{"color":"gold","bold":true,"translate":"tg.point.center"},{"color":"red","bold":true,"translate":"tg.tools.gamecheck.failmsg.2"}]
execute if score nife_game1_has_atk nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.tools.gamecheck.failmsg.1"},{"color":"gold","bold":true,"translate":"tg.point.atk"},{"color":"red","bold":true,"translate":"tg.tools.gamecheck.failmsg.2"}]
execute if score nife_game1_has_def nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.tools.gamecheck.failmsg.1"},{"color":"gold","bold":true,"translate":"tg.point.def"},{"color":"red","bold":true,"translate":"tg.tools.gamecheck.failmsg.2"}]
execute if score nife_game1_has_anv nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.tools.gamecheck.failmsg.1"},{"color":"gold","bold":true,"translate":"tg.point.anv"},{"color":"red","bold":true,"translate":"tg.tools.gamecheck.failmsg.2"}]
execute if score nife_game1_has_lobby nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.tools.gamecheck.failmsg.1"},{"color":"gold","bold":true,"translate":"tg.point.lobby"},{"color":"red","bold":true,"translate":"tg.tools.gamecheck.failmsg.2"}]
# 如果都好了
function towngame:game/town/tools/refreshpoint
#function towngame:game/event/death
execute if score nife_game1_hascenter nife_stats matches 1 if score nife_game1_has_atk nife_stats matches 1 if score nife_game1_has_def nife_stats matches 1 if score nife_game1_has_anv nife_stats matches 1 if score nife_game1_has_lobby nife_stats matches 1 run function towngame:tools/gamecheck/pass