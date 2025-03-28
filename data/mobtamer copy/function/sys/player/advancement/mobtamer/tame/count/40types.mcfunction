
execute unless data storage mobtamer:settings data.release_progress.gacha{silver:1b} run tellraw @s [{"storage": "mobtamer:text","nbt":"data.trader.trade_unlock","interpret": true}]
execute unless data storage mobtamer:settings data.release_progress.gacha{silver:1b} run tellraw @s [{"text": "  ","color": "yellow"},{"storage": "mobtamer:text","nbt":"data.common.silver_gacha","interpret": true,"color": "yellow"}]

data modify storage mobtamer:settings data.release_progress.gacha.silver set value 1b
