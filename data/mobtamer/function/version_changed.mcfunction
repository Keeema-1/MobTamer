#> mobtamer:version_changed
#
# データパックのバージョンが変更されたときに実行される
#
# @within function mobtamer:load

tellraw @a [{"storage": "mobtamer:text","nbt":"data.version_changed","interpret": true}]
