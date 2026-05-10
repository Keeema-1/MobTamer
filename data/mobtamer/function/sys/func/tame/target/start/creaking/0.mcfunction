
# クリーキングの心臓の位置にエリアエフェクトクラウドを召喚（心臓破壊検知用）
    data modify storage mobtamer:temp data.home_pos.x set from entity @s home_pos[0]
    data modify storage mobtamer:temp data.home_pos.y set from entity @s home_pos[1]
    data modify storage mobtamer:temp data.home_pos.z set from entity @s home_pos[2]
    data modify storage mobtamer:temp data.UUID set from entity @s UUID

    # title @a actionbar {storage:"mobtamer:temp",nbt:"data.home_pos"}

    function mobtamer:sys/func/tame/target/start/creaking/00 with storage mobtamer:temp data.home_pos

    data remove storage mobtamer:temp data.home_pos
    data remove storage mobtamer:temp data.UUID

# execute at @s summon creaking run function mobtamer:sys/func/tame/target/start/00
# effect give @s invisibility infinite 1 true
# kill @s
