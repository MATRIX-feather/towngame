#预设
scoreboard players set nife_game1_hascenter nife_stats 0
scoreboard players set nife_game1_has_atk nife_stats 0
scoreboard players set nife_game1_has_def nife_stats 0
scoreboard players set nife_game1_has_anv nife_stats 0
#设置
execute if entity @e[tag=spread] run scoreboard players set nife_game1_hascenter nife_stats 1
execute if entity @e[tag=game1_atk] run scoreboard players set nife_game1_has_atk nife_stats 1
execute if entity @e[tag=game1_def] run scoreboard players set nife_game1_has_def nife_stats 1
execute if entity @e[tag=game1_anv] run scoreboard players set nife_game1_has_anv nife_stats 1
#检查
execute if score nife_game1_hascenter nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","text":"未找到中心点,请确保该点被正确创建或已被加载"}]
execute if score nife_game1_has_atk nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","text":"未找到武器点,请确保该点被正确创建或已被加载"}]
execute if score nife_game1_has_def nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","text":"未找到防具点,请确保该点被正确创建或已被加载"}]
execute if score nife_game1_has_anv nife_stats matches 0 run tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","text":"未找到Anvil点,请确保该点被正确创建或已被加载"}]
# 如果都好了
function towngame:game/town/tools/refreshpoint
#function towngame:game/event/death
execute if score nife_game1_hascenter nife_stats matches 1 if score nife_game1_has_atk nife_stats matches 1 if score nife_game1_has_def nife_stats matches 1 if score nife_game1_has_anv nife_stats matches 1 run forceload add ~ ~
execute if score nife_game1_hascenter nife_stats matches 1 if score nife_game1_has_atk nife_stats matches 1 if score nife_game1_has_def nife_stats matches 1 if score nife_game1_has_anv nife_stats matches 1 run tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"green","bold":"true","text":"恭喜!游戏主体已经准备好了,输入 \u00a7f\u00a7l/function towngame:game/start \u00a7a\u00a7l即可开始"}]
execute if score nife_game1_hascenter nife_stats matches 1 if score nife_game1_has_atk nife_stats matches 1 if score nife_game1_has_def nife_stats matches 1 if score nife_game1_has_anv nife_stats matches 1 run function towngame:tools/reset