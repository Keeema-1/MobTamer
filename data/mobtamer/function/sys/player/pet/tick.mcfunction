
execute as @e[team=!,tag=mt.player_check,tag=mt.pet] at @s run function mobtamer:sys/player/pet/each/tick

# ゾンビなどの敵対共有モブが、複数隊同時に敵対すると敵対が重なってバグるため、tickを重ならないように
# scoreboard players reset $mt.target_flag mt.score
