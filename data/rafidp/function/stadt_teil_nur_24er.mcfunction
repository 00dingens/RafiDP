fill ~-32 ~-10 ~-32 ~47 ~-13 ~47 stone
fill ~-32 ~-6 ~-32 ~47 ~-9 ~47 stone
fill ~-32 ~-2 ~-32 ~47 ~-5 ~47 dirt
fill ~-32 ~-1 ~-32 ~47 ~-1 ~47 grass_block
setblock ~ ~-1 ~ stone
setblock ~80 ~-1 ~ stone
setblock ~ ~-1 ~80 stone
setblock ~80 ~-1 ~80 stone

execute positioned ~-28 ~ ~-16 run function rafidp:haus_s24x12x10
fill ~-23 ~-1 ~-4 ~-22 ~-1 ~2 gravel
fill ~-11 ~-1 ~-4 ~-10 ~-1 ~2 gravel
place feature oak ~-27 ~ ~-26
place feature birch ~-20 ~ ~-28
place feature oak ~-13 ~ ~-28
place feature oak ~-3 ~ ~-25

execute positioned ~20 ~ ~-16 run function rafidp:haus_s24x12x10
fill ~25 ~-1 ~-4 ~26 ~-1 ~2 gravel
fill ~37 ~-1 ~-4 ~38 ~-1 ~2 gravel
place feature cherry ~23 ~ ~-26
place feature cherry ~40 ~ ~-28

execute positioned ~-28 ~ ~21 run function rafidp:haus_n24x12x10
fill ~-23 ~-1 ~14 ~-22 ~-1 ~20 gravel
fill ~-11 ~-1 ~14 ~-10 ~-1 ~20 gravel
place feature acacia ~-27 ~ ~37
place feature acacia ~-27 ~ ~44
place feature acacia ~-4 ~ ~37
place feature acacia ~-4 ~ ~44

execute positioned ~20 ~ ~21 run function rafidp:haus_n24x12x10
fill ~25 ~-1 ~14 ~26 ~-1 ~20 gravel
fill ~37 ~-1 ~14 ~38 ~-1 ~20 gravel
place feature birch ~20 ~ ~40
place feature birch ~32 ~ ~40
place feature birch ~44 ~ ~40

execute positioned ~ ~ ~ run function rafidp:strasse_kreuzung

execute positioned ~-32 ~ ~ run function rafidp:strasse_x
execute positioned ~-16 ~ ~ run function rafidp:strasse_x
execute positioned ~16 ~ ~ run function rafidp:strasse_x
execute positioned ~32 ~ ~ run function rafidp:strasse_x

execute positioned ~ ~ ~-32 run function rafidp:strasse_y
execute positioned ~ ~ ~-16 run function rafidp:strasse_y
execute positioned ~ ~ ~16 run function rafidp:strasse_y
execute positioned ~ ~ ~32 run function rafidp:strasse_y
