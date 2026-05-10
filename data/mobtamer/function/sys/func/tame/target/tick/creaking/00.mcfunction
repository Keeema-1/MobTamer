
# 対象のクリーキングがいる場合
    execute on origin if entity @s[type=creaking] run return run function mobtamer:sys/func/tame/target/tick/creaking/000

# 対象のクリーキングがいない場合
    kill @s