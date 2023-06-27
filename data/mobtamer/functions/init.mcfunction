
# forceload_pet_chunk:1b -> ペットのいるチャンクをforceloadする。
# forceload_pet_chunk:0b -> ペットのいるチャンクをforceloadしない。離れ過ぎた場合はアイテム化。
data modify storage mobtamer:settings data merge value {forceload_pet_chunk:1b}

function mobtamer:init_settings

data modify storage mobtamer:settings data merge value {datapack_ver:[0,0,0]}
forceload remove all

scoreboard players set $mt.sys mt.slot 6

tellraw @a "設定が初期化されました。"

gamerule sendCommandFeedback false
# tellraw @a [{"text": "gamerule: sendCommandFeedback が False になりました。"}]
