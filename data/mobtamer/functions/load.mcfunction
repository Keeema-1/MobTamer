scoreboard objectives add mt.id dummy
scoreboard objectives add mt.login dummy
scoreboard objectives add mt.slot dummy
scoreboard objectives add mt.health dummy
scoreboard objectives add mt.max_health dummy
scoreboard objectives add mt.xp dummy
scoreboard objectives add mt.settings dummy
scoreboard objectives add mt.tame_type_count dummy
scoreboard objectives add mt.hostile_interval dummy
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
scoreboard objectives add mt.dropped.book dropped:book
scoreboard objectives add mt.sneak_time custom:sneak_time
scoreboard objectives add mt.death deathCount
# scoreboard objectives add mt.jump custom:jump

team add mt.common "共通チーム"

tellraw @a "Loaded: MobTamer_For20"

function mobtamer:sys/database/0

execute unless data storage mobtamer:settings data run function mobtamer:init

execute store result score $mt.ver.old.main mt.score run data get storage mobtamer:settings data.version.main
execute store result score $mt.ver.old.beta mt.score run data get storage mobtamer:settings data.version.beta
data modify storage mobtamer:settings data.version merge value {main:10000, beta:1}
execute store result score $mt.ver.now.main mt.score run data get storage mobtamer:settings data.version.main
execute store result score $mt.ver.now.beta mt.score run data get storage mobtamer:settings data.version.beta
execute unless score $mt.ver.old.main mt.score = $mt.ver.now.main mt.score unless score $mt.ver.old.beta mt.score = $mt.ver.now.beta mt.score run function mobtamer:version_changed
scoreboard players reset $mt.ver.old.main mt.score
scoreboard players reset $mt.ver.old.beta mt.score

scoreboard players set $mt.conductor.mode1.info mt.score 0
scoreboard players set $mt.conductor.mode1.stop mt.score 1
scoreboard players set $mt.conductor.mode1.gather mt.score 2
scoreboard players set $mt.conductor.mode1.attack mt.score 3
scoreboard players set $mt.conductor.mode1.store mt.score 4
scoreboard players set $mt.conductor.mode1.ride mt.score 5
scoreboard players set $mt.conductor.mode1.power_up mt.score 6
