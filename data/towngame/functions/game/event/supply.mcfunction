kill @e[type=item]
execute if score nife_tg_insanesupply nife_tg_settings matches 0 run summon minecraft:villager ~ ~50 ~ {Health:1,Glowing:1b,DeathLootTable:"towngame:supply",Profession:5,Career:1}
execute if score nife_tg_insanesupply nife_tg_settings matches 1 run summon minecraft:villager ~ ~50 ~ {Health:1,Glowing:1b,DeathLootTable:"towngame:insane/supply",Profession:5,Career:1}
tellraw @p {"translate":"tg.event.supply.release"}