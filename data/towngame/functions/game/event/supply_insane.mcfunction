kill @e[type=item]
summon minecraft:villager ~ ~50 ~ {Health:1,Glowing:1b,DeathLootTable:"towngame:insane/supply",Profession:5,Career:1}
tellraw @p {"translate":"tg.event.supply.release"}