summon minecraft:horse ~ ~ ~ {Tags:["towngame_entity"],NoAI:1b,Health:6,Silent:1b,DeathLootTable:"entities/empty",Attributes:[{Name:"generic.maxHealth",Base:6},{Name:"generic.movementSpeed",Base:0.3}],Tame:1b,SaddleItem:{id:"minecraft:saddle",Count:1b}}
kill @e[distance=..2,type=item,nbt={tg_tags:["summon_horse"]}]