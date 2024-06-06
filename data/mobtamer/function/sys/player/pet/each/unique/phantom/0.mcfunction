
execute on vehicle run return 1

# ターゲットレコードいない & インターバルが0 -> ターゲットレコードをつける
# ターゲットレコードいる & インターバルが0 -> 攻撃

execute if score @s mt.hostile_interval matches 1.. run scoreboard players remove @s mt.hostile_interval 1

execute unless score @s mt.hostile_interval matches 1.. on passengers if entity @s[tag=mt.target_record_entity] run function mobtamer:sys/player/pet/each/unique/phantom/attack/check/0

execute unless score @s mt.hostile_interval matches 1.. unless score $mt.exist_target_record_entity mt.score matches 1.. run function mobtamer:sys/player/pet/each/unique/phantom/target_start/0

# execute if score @s mt.hostile_interval matches 61.. run data modify entity @s Rotation[1] set value 60.0d
execute if score @s mt.hostile_interval matches 41.. at @s run tp @s ^ ^ ^ ~ 70
execute if score @s mt.hostile_interval matches 41.. run data modify entity @s Motion set value [0.0d,0.3d,0.0d]

scoreboard players reset $mt.attack_flag mt.score
scoreboard players reset $mt.exist_target_record_entity mt.score
