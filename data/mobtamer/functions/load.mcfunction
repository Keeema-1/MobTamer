scoreboard objectives add mt.id dummy
scoreboard objectives add mt.login dummy
scoreboard objectives add mt.slot dummy
scoreboard objectives add mt.health dummy
scoreboard objectives add mt.health_nbt dummy
scoreboard objectives add mt.max_health dummy
scoreboard objectives add mt.xp dummy
scoreboard objectives add mt.settings dummy
scoreboard objectives add mt.tame_type_count dummy
scoreboard objectives add mt.hostile_interval dummy
scoreboard objectives add mt.version.main dummy
scoreboard objectives add mt.version.beta dummy
scoreboard objectives add mt.strategy dummy
# プレイヤー：パーティーの最大コスト，ペット：自身のコスト
scoreboard objectives add mt.cost dummy
# 共通．(etc. チャンスタイム)
scoreboard objectives add mt.score dummy
# スポーンエッグでの召喚のチェックを，「スポーンエッグを手に持っている時から一定tick」にする
# さらに、召喚後のペットにこのスコアを付与し、一定時間後にコスト計算を行う（召喚直後は武器が反映されないことが多いため）
scoreboard objectives add mt.summon_check_time dummy

scoreboard objectives add mt.trigger trigger
scoreboard players enable @a mt.trigger

scoreboard objectives add mt.dropped.fishing_rod dropped:fishing_rod
scoreboard objectives add mt.dropped.golden_apple dropped:golden_apple
scoreboard objectives add mt.dropped.enchanted_golden_apple dropped:enchanted_golden_apple
scoreboard objectives add mt.dropped.book dropped:book
scoreboard objectives add mt.sneak_time custom:sneak_time
scoreboard objectives add mt.death deathCount
# scoreboard objectives add mt.jump custom:jump

team add mt.common "共通チーム"

team add mt.red "赤チーム"
team modify mt.red color red
team add mt.blue "青チーム"
team modify mt.blue color blue
team add mt.green "緑チーム"
team modify mt.green color green
team add mt.gold "橙チーム"
team modify mt.gold color gold

function mobtamer:sys/database/0

execute unless data storage mobtamer:settings data run function mobtamer:init
function mobtamer:update_settings

execute store result score $mt.ver.old.main mt.score run data get storage mobtamer:settings data.version.main
execute store result score $mt.ver.old.beta mt.score run data get storage mobtamer:settings data.version.beta
data modify storage mobtamer:settings data.version merge value {main:10000, beta:5}
execute store result score $mt.ver.now.main mt.score run data get storage mobtamer:settings data.version.main
execute store result score $mt.ver.now.beta mt.score run data get storage mobtamer:settings data.version.beta

scoreboard players set $mt.const mt.score 100
scoreboard players operation $mt.ver.now.main.1 mt.score = $mt.ver.now.main mt.score
scoreboard players operation $mt.ver.now.main.1 mt.score /= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.2 mt.score = $mt.ver.now.main.1 mt.score
scoreboard players operation $mt.ver.now.main.2 mt.score %= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.1 mt.score /= $mt.const mt.score
scoreboard players operation $mt.ver.now.main.3 mt.score = $mt.ver.now.main mt.score
scoreboard players operation $mt.ver.now.main.3 mt.score %= $mt.const mt.score

execute unless score $mt.ver.old.main mt.score = $mt.ver.now.main mt.score run function mobtamer:version_changed
execute if score $mt.ver.old.main mt.score = $mt.ver.now.main mt.score unless score $mt.ver.old.beta mt.score = $mt.ver.now.beta mt.score run function mobtamer:version_changed

execute if score $mt.ver.now.beta mt.score matches 1.. run tellraw @a [{"text": "Loaded: ","color": "green"},{"text": "MobTamer For 1.20.1","color": "green","underlined":true},{"text": "  Ver ","color": "yellow"},{"score":{"name": "$mt.ver.now.main.1","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.2","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.3","objective": "mt.score"},"color": "yellow"},{"text": " Beta","color": "yellow"},{"score":{"name": "$mt.ver.now.beta","objective": "mt.score"},"color": "yellow"}]
execute unless score $mt.ver.now.beta mt.score matches 1.. run tellraw @a [{"text": "Loaded: MobTamer For 1.20.1","color": "green"},{"text": "  Ver ","color": "yellow"},{"score":{"name": "$mt.ver.now.main.1","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.2","objective": "mt.score"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$mt.ver.now.main.3","objective": "mt.score"},"color": "yellow"}]

execute as @a unless score @s mt.version.main = $mt.ver.now.main mt.score run function mobtamer:sys/player/version_up/0
execute as @a if score @s mt.version.main = $mt.ver.now.main mt.score unless score @s mt.version.beta = $mt.ver.now.beta mt.score run function mobtamer:sys/player/version_up/0

scoreboard players reset $mt.ver.old.main mt.score
scoreboard players reset $mt.ver.old.beta mt.score
scoreboard players reset $mt.ver.now.main.1 mt.score
scoreboard players reset $mt.ver.now.main.2 mt.score
scoreboard players reset $mt.ver.now.main.3 mt.score
scoreboard players reset $mt.const mt.score

scoreboard players set $mt.conductor.mode1.info mt.score 0
scoreboard players set $mt.conductor.mode1.stop mt.score 1
scoreboard players set $mt.conductor.mode1.gather mt.score 2
scoreboard players set $mt.conductor.mode1.attack mt.score 3
scoreboard players set $mt.conductor.mode1.store mt.score 4
scoreboard players set $mt.conductor.mode1.ride mt.score 5
scoreboard players set $mt.conductor.mode1.power_up mt.score 6
scoreboard players set $mt.conductor.mode1.strategy mt.score 7

scoreboard players set $mt.strategy.attack mt.score 0
scoreboard players set $mt.strategy.balance mt.score 1
scoreboard players set $mt.strategy.recover mt.score 2
scoreboard players set $mt.strategy.follow mt.score 3

execute as @e[type=chest_minecart,tag=mt.data_transfer] run data modify entity @s Items set from storage mobtamer_transfer:data data.Items
