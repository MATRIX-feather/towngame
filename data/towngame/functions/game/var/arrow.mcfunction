execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[2.0,0.2,0.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[-2.0,0.2,0.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,2.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-2.0]}

execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[2.0,0.2,2.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[-2.0,0.2,-2.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[-2.0,0.2,2.0]}
execute at @p run execute positioned ~ ~1 ~ run summon minecraft:arrow ~ ~ ~ {Motion:[2.0,0.2,-2.0]}

kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:arrow",Count:1b,tag:{display:{Name:"{\"text\":\"箭矢发射器\"}",Lore:['{"text":"箭矢发射器"}']}}}}]