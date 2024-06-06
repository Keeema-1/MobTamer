
execute if predicate mobtamer:random/200m run scoreboard players set $mt.random mt.score 1

execute unless score $mt.random mt.score matches 1 run attribute @s generic.attack_damage modifier add 0-0-0-0-aacaae "mt.attack_damage.add" 1 add
execute if score $mt.random mt.score matches 1 run attribute @s generic.attack_damage modifier add 0-0-0-0-aacaae "mt.attack_damage.add" 2 add

scoreboard players reset $mt.random mt.score