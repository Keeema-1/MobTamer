
# ペット用装備商人
    data modify storage mobtamer:database data.daily.pet_equipment set value []

    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06

    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    function mobtamer:sys/trader/daily_change/pet_equipment/06
    # function mobtamer:sys/trader/daily_change/pet_equipment/06
    # function mobtamer:sys/trader/daily_change/pet_equipment/06
    # function mobtamer:sys/trader/daily_change/pet_equipment/06
    # function mobtamer:sys/trader/daily_change/pet_equipment/06

    data modify storage mobtamer:database data.daily.pet_equipment_trader set from storage mobtamer:database data.daily.pet_equipment

data modify storage mobtamer:database data.daily.pet_equipment set value []

execute if data storage mobtamer:settings data.release_progress{pet_equipment:1} run function mobtamer:sys/trader/daily_change/pet_equipment/01
execute if data storage mobtamer:settings data.release_progress{pet_equipment:1} run function mobtamer:sys/trader/daily_change/pet_equipment/01

execute if data storage mobtamer:settings data.release_progress{pet_equipment:2} run function mobtamer:sys/trader/daily_change/pet_equipment/02
execute if data storage mobtamer:settings data.release_progress{pet_equipment:2} run function mobtamer:sys/trader/daily_change/pet_equipment/02

execute if data storage mobtamer:settings data.release_progress{pet_equipment:3} run function mobtamer:sys/trader/daily_change/pet_equipment/03
execute if data storage mobtamer:settings data.release_progress{pet_equipment:3} run function mobtamer:sys/trader/daily_change/pet_equipment/03
execute if data storage mobtamer:settings data.release_progress{pet_equipment:3} run function mobtamer:sys/trader/daily_change/pet_equipment/03

execute if data storage mobtamer:settings data.release_progress{pet_equipment:4} run function mobtamer:sys/trader/daily_change/pet_equipment/04
execute if data storage mobtamer:settings data.release_progress{pet_equipment:4} run function mobtamer:sys/trader/daily_change/pet_equipment/04
execute if data storage mobtamer:settings data.release_progress{pet_equipment:4} run function mobtamer:sys/trader/daily_change/pet_equipment/04

execute if data storage mobtamer:settings data.release_progress{pet_equipment:5} run function mobtamer:sys/trader/daily_change/pet_equipment/05
execute if data storage mobtamer:settings data.release_progress{pet_equipment:5} run function mobtamer:sys/trader/daily_change/pet_equipment/05
execute if data storage mobtamer:settings data.release_progress{pet_equipment:5} run function mobtamer:sys/trader/daily_change/pet_equipment/05
execute if data storage mobtamer:settings data.release_progress{pet_equipment:5} run function mobtamer:sys/trader/daily_change/pet_equipment/05

execute if data storage mobtamer:settings data.release_progress{pet_equipment:6} run function mobtamer:sys/trader/daily_change/pet_equipment/06
execute if data storage mobtamer:settings data.release_progress{pet_equipment:6} run function mobtamer:sys/trader/daily_change/pet_equipment/06
execute if data storage mobtamer:settings data.release_progress{pet_equipment:6} run function mobtamer:sys/trader/daily_change/pet_equipment/06
execute if data storage mobtamer:settings data.release_progress{pet_equipment:6} run function mobtamer:sys/trader/daily_change/pet_equipment/06
execute if data storage mobtamer:settings data.release_progress{pet_equipment:6} run function mobtamer:sys/trader/daily_change/pet_equipment/06

# execute as @e[type=wandering_trader,tag=mt.trader]
