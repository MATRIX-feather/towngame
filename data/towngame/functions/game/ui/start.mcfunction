#"\u00a7<...> " = '空格'
execute if score nife_tg_title nife_time matches 15 run title @a[tag=nife_game_1] title {"text":"_"}
#title @a[tag=nife_game_1] subtitle {"color":"gold","bold":"true","text":""}
execute if score nife_tg_title nife_time matches 30 run title @a[tag=nife_game_1] title {"text":"T_"}
execute if score nife_tg_title nife_time matches 32 run title @a[tag=nife_game_1] title {"text":"To_"}
execute if score nife_tg_title nife_time matches 34 run title @a[tag=nife_game_1] title {"text":"Tow_"}
execute if score nife_tg_title nife_time matches 36 run title @a[tag=nife_game_1] title {"text":"Town_"}
execute if score nife_tg_title nife_time matches 38 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lT\u00a7fownG_"}
execute if score nife_tg_title nife_time matches 40 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTo\u00a7fwnGa_"}
execute if score nife_tg_title nife_time matches 42 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTow\u00a7fnGam_"}
execute if score nife_tg_title nife_time matches 44 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTown\u00a7fGame_"}
execute if score nife_tg_title nife_time matches 46 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownG\u00a7fame_"}
execute if score nife_tg_title nife_time matches 48 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGa\u00a7fme_"}
execute if score nife_tg_title nife_time matches 50 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGam\u00a7fe_"}
execute if score nife_tg_title nife_time matches 52 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}

execute if score nife_tg_title nife_time matches 70 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 80 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}
execute if score nife_tg_title nife_time matches 90 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 100 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}
execute if score nife_tg_title nife_time matches 110 run title @a[tag=nife_game_1] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 130 run title @a[tag=nife_game_1] subtitle [{"color":"red","bold":true,"translate":"tg.ui.subt.start","with":[{"color":"gold","bold":"true","score":{"objective":"nife_stats","name":"nife_tg_1stevent_display"}},{"translate":"tg.time.sec"}]}]
execute if score nife_tg_title nife_time matches 130 run scoreboard players set nife_tg_title nife_stats 0