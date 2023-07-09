
ride @s mount @e[team=mt.common,tag=mt.logout_check,limit=1]

data merge entity @s {transformation:{translation:[0.0f,1.2f,0.0f]},text:'"ログアウト中"',billboard:"vertical"}

tag @s add mt.logout_display