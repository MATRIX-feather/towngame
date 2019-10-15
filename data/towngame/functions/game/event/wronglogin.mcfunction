clear @a[tag=nife_game_1]
tag @a[tag=nife_game_1] remove nife_game_1
function towngame:game/endgame
tellraw @a [{"color":"dark_aqua","bold":"true","translate":"tg.name"},{"color":"gray","bold":"true","translate":"tg.msg.head"},{"color":"red","bold":"true","translate":"tg.event.wronglogin"}]