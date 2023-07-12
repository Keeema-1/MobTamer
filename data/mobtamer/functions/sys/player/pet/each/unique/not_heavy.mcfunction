
execute on passengers if entity @s[type=#mobtamer:weight/heavy] run tellraw @a [{"text": "重量オーバーです。","color": "red"}]
execute on passengers if entity @s[type=#mobtamer:weight/heavy] run ride @s dismount
