
tag @s add mt.creaking_tame_success

tp ~ -100 ~

execute summon creaking run function mobtamer:sys/func/tame/target/tick/creaking/00000

schedule function mobtamer:sys/func/tame/target/tick/0 1t replace
