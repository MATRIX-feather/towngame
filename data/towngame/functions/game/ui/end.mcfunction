#"\u00a7<...> " = '空格'
#execute if score nife_tg_title nife_time matches 15 run title @a title {"text":"_"}
#execute if score nife_tg_title nife_time matches 30 run title @a title {"text":"y_"}
#execute if score nife_tg_title nife_time matches 32 run title @a title {"text":"yo_"}
#execute if score nife_tg_title nife_time matches 34 run title @a title {"text":"you_"}
#execute if score nife_tg_title nife_time matches 36 run title @a title {"text":"游_"}
#execute if score nife_tg_title nife_time matches 38 run title @a title {"text":"游x_"}
#execute if score nife_tg_title nife_time matches 40 run title @a title {"text":"游xi_"}
#execute if score nife_tg_title nife_time matches 42 run title @a title {"text":"游戏_"}
#execute if score nife_tg_title nife_time matches 44 run title @a title {"text":"游戏j_"}
#execute if score nife_tg_title nife_time matches 46 run title @a title {"text":"游戏ji_"}
#execute if score nife_tg_title nife_time matches 48 run title @a title {"text":"游戏jie_"}
#execute if score nife_tg_title nife_time matches 50 run title @a title {"text":"游戏结_"}
#execute if score nife_tg_title nife_time matches 52 run title @a title {"text":"游戏结s_"}
#execute if score nife_tg_title nife_time matches 54 run title @a title {"text":"游戏结sh_"}
#execute if score nife_tg_title nife_time matches 56 run title @a title {"text":"游戏结shu_"}
#execute if score nife_tg_title nife_time matches 60 run title @a title {"text":"游戏结束"}

execute if score nife_tg_title nife_time matches 15 run title @a[tag=!nife_noti_disabled] title {"text":"_"}
title @a[tag=!nife_noti_disabled] subtitle {"color":"gold","bold":"true","text":""}
execute if score nife_tg_title nife_time matches 30 run title @a[tag=!nife_noti_disabled] title {"text":"T_"}
execute if score nife_tg_title nife_time matches 32 run title @a[tag=!nife_noti_disabled] title {"text":"To_"}
execute if score nife_tg_title nife_time matches 34 run title @a[tag=!nife_noti_disabled] title {"text":"Tow_"}
execute if score nife_tg_title nife_time matches 36 run title @a[tag=!nife_noti_disabled] title {"text":"Town_"}
execute if score nife_tg_title nife_time matches 38 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lT\u00a7fownG_"}
execute if score nife_tg_title nife_time matches 40 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTo\u00a7fwnGa_"}
execute if score nife_tg_title nife_time matches 42 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTow\u00a7fnGam_"}
execute if score nife_tg_title nife_time matches 44 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTown\u00a7fGame_"}
execute if score nife_tg_title nife_time matches 46 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownG\u00a7fame_"}
execute if score nife_tg_title nife_time matches 48 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGa\u00a7fme_"}
execute if score nife_tg_title nife_time matches 50 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGam\u00a7fe_"}
execute if score nife_tg_title nife_time matches 52 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}
execute if score nife_tg_title nife_time matches 70 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 80 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}
execute if score nife_tg_title nife_time matches 90 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 100 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame\u00a7f_"}
execute if score nife_tg_title nife_time matches 110 run title @a[tag=!nife_noti_disabled] title {"text":"\u00a7c\u00a7lTownGame"}
execute if score nife_tg_title nife_time matches 130 run title @a[tag=!nife_noti_disabled] subtitle {"text":"\u00a7c\u00a7l游戏结束"}
execute if score nife_tg_title nife_time matches 130 run scoreboard players set nife_tg_title nife_stats 0