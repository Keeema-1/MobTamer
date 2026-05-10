
function mobtamer:sys/player/player_check_add
# function mobtamer:sys/common/team/same_tag/add

# 周囲のモブがプレイヤーから攻撃されていたら、そのモブに対してペットたちが敵対する
    execute positioned ^ ^ ^8 as @e[type=#mobtamer:mob,tag=!mt.same_team,distance=..16] run function mobtamer:sys/func/pet/target/player_attack/00

function mobtamer:sys/player/player_check_remove
# function mobtamer:sys/common/team/same_tag/remove
