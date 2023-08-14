function mobtamer:sys/common/pet/kill

tellraw @a [{"selector":"@s"},{"text":"が死亡しました。","color":"red"}]
