# function mobtamer:sys/player/pet/each/store/0
# スコアでスケジュールが既に設定されているか確認
scoreboard players set $mt.schedule.store.phantom mt.score 1
schedule function mobtamer:sys/schedule/store/phantom/0 3s replace
execute on passengers if entity @s[type=player] run schedule function mobtamer:sys/schedule/store/phantom/0 10s replace
tellraw @a[tag=mt.player_check] [{"text":"ファントムは日中の間には召喚できません。","color": "red"}]
