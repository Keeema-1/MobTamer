
data modify storage mobtamer:temp data.pet_status set from storage mobtamer:temp data.Item.components."minecraft:custom_data".mobtamer.status

function mobtamer:sys/func/pet/store/set_lore/prepare

function mobtamer:sys/func/pet/store/set_lore/set_lore

data remove storage mobtamer:temp data.pet_status