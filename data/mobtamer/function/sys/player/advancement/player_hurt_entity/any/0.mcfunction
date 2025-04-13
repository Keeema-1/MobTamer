#> mobtamer:sys/player/advancement/player_hurt_entity/any/0
#
# プレイヤーがモブを攻撃したときの処理
#
# @within advancement mobtamer:advancement/player_hurt_entity/any

function mobtamer:sys/func/pet/target/when_player_attacks/0
advancement revoke @s only mobtamer:player_hurt_entity/any
