# 足元が危険ブロックのとき
execute if block ~ ~-0.5 ~ #mobtamer:common/dangerous if predicate mobtamer:random/100m at @a[tag=mt.player_check,limit=1] facing entity @s eyes rotated ~ 0 positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ~ ~-1.4 ~ run function mobtamer:sys/player/pet/each/tp/space/0
# 離れている，かつスペースがあるとき
execute at @s unless entity @a[distance=..16] if predicate mobtamer:random/100m at @a[tag=mt.player_check,limit=1] facing entity @s eyes rotated ~ 0 positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ^ ^ ^1 if block ~ ~ ~ #mobtamer:space positioned ~ ~-1.4 ~ run function mobtamer:sys/player/pet/each/tp/space/0
# かなり離れたら確実にtp
execute at @s unless entity @a[tag=mt.player_check,distance=..64] at @a[tag=mt.player_check,limit=1] run spreadplayers ~ ~ 4 1 false @s
