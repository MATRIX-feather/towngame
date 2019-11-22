effect give @a[tag=nife_game_1,distance=1..] minecraft:glowing 10 1 true
playsound towngame:gadgets.glow.use master @a[tag=nife_game_1]
tellraw @a[tag=nife_game_1,gamemode=adventure,distance=2..] [{"color":"red","translate":"tg.gadgets.glow.target"}]
tellraw @s [{"color":"green","translate":"tg.gadgets.glow.user"}]