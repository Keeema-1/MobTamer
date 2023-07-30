
scoreboard players set $mt.shoot_flag mt.score 1

scoreboard players set @s mt.hostile_interval 160

# tellraw @a "shoot"

playsound entity.ghast.shoot hostile @a ~ ~ ~ 4 1
playsound entity.ghast.warn hostile @a ~ ~ ~ 4 1

execute anchored eyes at @s on passengers if entity @s[tag=mt.target_record_entity] on origin facing entity @s eyes as @e[team=!,tag=mt.pet_check,tag=mt.pet,limit=1] run function mobtamer:sys/player/pet/each/unique/ghast/fireball/shoot/00
