damage @e[team=mt.common,type=#mobtamer:can_tame,tag=mt.pet_check,limit=1] 0 mob_attack by @s from @s

# ゾンビなどの敵対共有モブが、複数隊同時に敵対すると敵対が重なってバグるため、tickを重ならないように
# scoreboard players set $mt.target_flag mt.score 1

particle angry_villager ~ ~3 ~ 0 0 0 0 1
