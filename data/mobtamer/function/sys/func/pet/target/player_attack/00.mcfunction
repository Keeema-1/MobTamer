# そのモブがプレイヤーに攻撃されていたらフラグをONにする
    execute on attacker if entity @s[type=player,tag=mt.player_check] run scoreboard players set #mt.flag mt.temp 1

# フラグがONならそのモブに対してペットたちが敵対する
    execute if score #mt.flag mt.temp matches 1.. run function mobtamer:sys/func/pet/target/player_attack/000

scoreboard players reset #mt.flag mt.temp
