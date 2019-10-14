effect give @a[tag=nife_game_1] minecraft:glowing 10 1 true
tellraw @a[tag=nife_game_1,gamemode=adventure,distance=2..] [{"translate":"tg.var.glow.target"}]
tellraw @p[gamemode=adventure,tag=nife_game_1] [{"translate":"tg.var.glow.user"}]
effect clear @p minecraft:glowing
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{display:{Name:"{\"text\":\"透视者\"}",Lore:['{"text":"可以使其他玩家发光"}']}}}}]