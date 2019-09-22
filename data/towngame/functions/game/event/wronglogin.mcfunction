clear @a[tag=nife_game_1]
tag @a[tag=nife_game_1] remove nife_game_1
function towngame:game/endgame
tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","text":"错误:检测到有玩家带有错误的参数登录,已重新结束Towngame以保证一切可以正常运作"}]