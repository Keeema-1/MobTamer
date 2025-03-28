execute if score @s mt.death matches 2.. run function mobtamer:sys/player/death/dead
execute if score @s mt.death matches 1.. run scoreboard players add @s mt.death 1

# tellraw @a [{"entity":"@s","nbt":"DeathTime"}]