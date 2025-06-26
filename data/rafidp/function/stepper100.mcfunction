tellraw @s [{"text":"Erstelle Stepper-Platten","color":"gray"}]
execute positioned over motion_blocking run fill ~-2 ~ ~ ~2 ~1 ~ air
execute positioned over motion_blocking run fill ~ ~ ~-2 ~ ~1 ~2 air
execute positioned over motion_blocking run setblock ~ ~-1 ~ sea_lantern
execute positioned over motion_blocking run setblock ~1 ~-1 ~ magenta_glazed_terracotta[facing=west]
execute positioned over motion_blocking run setblock ~2 ~-1 ~ command_block{Command:"function rafidp:stepper100_east"}
execute positioned over motion_blocking run setblock ~2 ~ ~ pale_oak_pressure_plate
execute positioned over motion_blocking run setblock ~ ~-1 ~1 magenta_glazed_terracotta[facing=north]
execute positioned over motion_blocking run setblock ~ ~-1 ~2 command_block{Command:"function rafidp:stepper100_south"}
execute positioned over motion_blocking run setblock ~ ~ ~2 pale_oak_pressure_plate
execute positioned over motion_blocking run setblock ~-1 ~-1 ~ magenta_glazed_terracotta[facing=east]
execute positioned over motion_blocking run setblock ~-2 ~-1 ~ command_block{Command:"function rafidp:stepper100_west"}
execute positioned over motion_blocking run setblock ~-2 ~ ~ pale_oak_pressure_plate
execute positioned over motion_blocking run setblock ~ ~-1 ~-1 magenta_glazed_terracotta[facing=south]
execute positioned over motion_blocking run setblock ~ ~-1 ~-2 command_block{Command:"function rafidp:stepper100_north"}
execute positioned over motion_blocking run setblock ~ ~ ~-2 pale_oak_pressure_plate
