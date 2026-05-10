
# クリーキング死亡検知
    tag @s add mt.me
    execute at @s unless entity @e[type=creaking,tag=mt.me,tag=!mt.creaking_tame_success,distance=..0.01] run function mobtamer:sys/func/tame/target/tick/creaking/0000
    tag @s remove mt.me
