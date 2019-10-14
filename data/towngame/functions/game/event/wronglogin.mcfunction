clear @a[tag=nife_game_1]
tag @a[tag=nife_game_1] remove nife_game_1
function towngame:game/endgame
tellraw @a [{"color":"dark_aqua","bold":"true","text":"Towngame"},{"color":"gray","bold":"true","text":" >> "},{"color":"red","bold":"true","translate":"tg.event.wronglogin"}]