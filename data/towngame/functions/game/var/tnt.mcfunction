

execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[1.0,0.5,0.0],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[-1.0,0.5,0.0],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[0.0,0.5,1.0],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[0.0,0.5,-1.0],Fuse:20}

execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[0.5,0.5,0.5],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[-0.5,0.5,-0.5],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[-0.5,0.5,0.5],Fuse:20}
execute at @p run execute positioned ~ ~-0.1 ~ run summon creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:3,Motion:[0.5,0.5,-0.5],Fuse:20}

effect give @p minecraft:resistance 5 40 true

kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:tnt",Count:1b,tag:{display:{Name:"{\"text\":\"TNT\"}",Lore:['{"text":"BOOM"}']}}}}]