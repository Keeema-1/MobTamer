
execute if data entity @s SelectedItem.components."minecraft:custom_data"{mt_settings:1b} run item modify entity @s weapon.mainhand mobtamer:settings_update
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"{mt_settings:1b} run item modify entity @s weapon.offhand mobtamer:settings_update
