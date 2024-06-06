
execute if data storage mobtamer:temp data.pet.state{not_full:1b} run function mobtamer:sys/display/text/not_full
execute unless data storage mobtamer:temp data.pet.state{not_full:1b} run function mobtamer:sys/display/text/full
