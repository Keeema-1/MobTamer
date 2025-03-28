# tellraw @s "login"
execute unless score @s mt.id matches -2147483648..2147483647 run function mobtamer:sys/player/login/first
team join mt.common
scoreboard players enable @s mt.trigger

# 縛り反映


execute unless score @s mt.version.main = $mt.ver.now.main mt.score run function mobtamer:sys/player/version_up/0
execute if score @s mt.version.main = $mt.ver.now.main mt.score unless score @s mt.version.beta = $mt.ver.now.beta mt.score run function mobtamer:sys/player/version_up/0
