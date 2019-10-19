effect give @a[tag=nife_game_1,distance=1..] minecraft:glowing 10 1 true
tellraw @a[tag=nife_game_1,gamemode=adventure,distance=2..] [{"color":"red","translate":"tg.var.glow.target"}]
tellraw @s [{"color":"green","translate":"tg.var.glow.user"}]