
# forceload_pet_chunk:1b -> ペットのいるチャンクをforceloadする。
# forceload_pet_chunk:0b -> ペットのいるチャンクをforceloadしない。離れ過ぎた場合はアイテム化。
data modify storage mobtamer:settings data merge value {forceload_pet_chunk:1b}
forceload remove all

tellraw @a "設定が初期化されました。"
