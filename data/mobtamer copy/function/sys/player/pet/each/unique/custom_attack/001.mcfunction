
function mobtamer:sys/common/pet/attack/src

execute on passengers if entity @s[tag=mt.target_record_entity] on origin if data entity @s {HurtTime:0s} run function mobtamer:sys/common/pet/attack/dst

scoreboard players set @s mt.hostile_interval 25
