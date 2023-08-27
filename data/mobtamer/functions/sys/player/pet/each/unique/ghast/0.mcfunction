
# ターゲットレコードいない & インターバルが0 -> ターゲットレコードをつける
# ターゲットレコードいる & インターバルが0 -> 攻撃

execute if score @s mt.hostile_interval matches 1.. unless predicate mobtamer:vehicle/any run scoreboard players remove @s mt.hostile_interval 1

execute unless score @s mt.hostile_interval matches 1.. unless predicate mobtamer:vehicle/any on passengers if entity @s[tag=mt.target_record_entity] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/check/0
execute if score @s mt.hostile_interval matches ..60 unless predicate mobtamer:vehicle/any at @s on passengers if entity @s[tag=mt.target_record_entity] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/face
execute if score @s mt.hostile_interval matches 180.. unless predicate mobtamer:vehicle/any at @s on passengers if entity @s[tag=mt.target_record_entity] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/face

execute unless score @s mt.hostile_interval matches 1.. unless predicate mobtamer:vehicle/any unless score $mt.exist_target_record_entity mt.score matches 1.. run function mobtamer:sys/player/pet/each/unique/ghast/target_start/0

scoreboard players reset $mt.shoot_flag mt.score
scoreboard players reset $mt.exist_target_record_entity mt.score
