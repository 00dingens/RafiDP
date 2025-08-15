fill ~-32 ~-10 ~-32 ~47 ~-13 ~47 stone
fill ~-32 ~-6 ~-32 ~47 ~-9 ~47 stone
fill ~-32 ~-2 ~-32 ~47 ~-5 ~47 dirt
fill ~-32 ~-1 ~-32 ~47 ~-1 ~47 grass_block

execute positioned ~-29 ~ ~-29 run function rafidp:haus_n10x10x10
fill ~-25 ~-1 ~-30 ~-24 ~-1 ~-32 gravel
execute positioned ~-13 ~ ~-29 run function rafidp:haus_n10x10x10
fill ~-9 ~-1 ~-30 ~-8 ~-1 ~-32 gravel
execute positioned ~-29 ~ ~-13 run function rafidp:haus_s10x10x10
fill ~-25 ~-1 ~-3 ~-24 ~-1 ~2 gravel
execute positioned ~-13 ~ ~-13 run function rafidp:haus_s10x10x10
fill ~-9 ~-1 ~-3 ~-8 ~-1 ~2 gravel

execute positioned ~19 ~ ~-29 run function rafidp:haus_n10x10x10
fill ~23 ~-1 ~-30 ~24 ~-1 ~-32 gravel
execute positioned ~35 ~ ~-29 run function rafidp:haus_n10x10x10
fill ~39 ~-1 ~-30 ~40 ~-1 ~-32 gravel
execute positioned ~19 ~ ~-13 run function rafidp:haus_s10x10x10
fill ~23 ~-1 ~-3 ~24 ~-1 ~2 gravel
execute positioned ~35 ~ ~-13 run function rafidp:haus_s10x10x10
fill ~39 ~-1 ~-3 ~40 ~-1 ~2 gravel

execute positioned ~-29 ~ ~19 run function rafidp:haus_n10x10x10
fill ~-25 ~-1 ~18 ~-24 ~-1 ~14 gravel
execute positioned ~-13 ~ ~19 run function rafidp:haus_n10x10x10
fill ~-9 ~-1 ~18 ~-8 ~-1 ~14 gravel
execute positioned ~-29 ~ ~35 run function rafidp:haus_s10x10x10
fill ~-25 ~-1 ~45 ~-24 ~-1 ~47 gravel
execute positioned ~-13 ~ ~35 run function rafidp:haus_s10x10x10
fill ~-9 ~-1 ~45 ~-8 ~-1 ~47 gravel

execute positioned ~19 ~ ~19 run function rafidp:haus_n10x10x10
fill ~23 ~-1 ~18 ~24 ~-1 ~14 gravel
execute positioned ~35 ~ ~19 run function rafidp:haus_n10x10x10
fill ~39 ~-1 ~18 ~40 ~-1 ~14 gravel
execute positioned ~19 ~ ~35 run function rafidp:haus_s10x10x10
fill ~23 ~-1 ~45 ~24 ~-1 ~47 gravel
execute positioned ~35 ~ ~35 run function rafidp:haus_s10x10x10
fill ~39 ~-1 ~45 ~40 ~-1 ~47 gravel

execute positioned ~ ~ ~ run function rafidp:strasse_kreuzung

execute positioned ~-32 ~ ~ run function rafidp:strasse_x
execute positioned ~-16 ~ ~ run function rafidp:strasse_x
execute positioned ~16 ~ ~ run function rafidp:strasse_x
execute positioned ~32 ~ ~ run function rafidp:strasse_x

execute positioned ~ ~ ~-32 run function rafidp:strasse_y
execute positioned ~ ~ ~-16 run function rafidp:strasse_y
execute positioned ~ ~ ~16 run function rafidp:strasse_y
execute positioned ~ ~ ~32 run function rafidp:strasse_y
