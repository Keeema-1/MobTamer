
execute if data storage mobtamer:temp data.pet.state{not_full:1b} run function mobtamer:sys/func/pet/status_display/update/text_display/not_full
execute unless data storage mobtamer:temp data.pet.state{not_full:1b} run function mobtamer:sys/func/pet/status_display/update/text_display/full
