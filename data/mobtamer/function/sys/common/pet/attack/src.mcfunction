
execute store result score $mt.src.attack_damage mt.score run attribute @s generic.attack_damage get
execute if entity @s[type=#mobtamer:custom_attack/can_be] run scoreboard players operation $mt.src.attack_damage mt.score = @s mt.attack_damage
