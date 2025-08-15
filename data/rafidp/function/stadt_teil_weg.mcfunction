fill ~-32 ~-10 ~-32 ~47 ~-13 ~47 stone
fill ~-32 ~-6 ~-32 ~47 ~-9 ~47 stone
fill ~-32 ~-2 ~-32 ~47 ~-5 ~47 dirt
fill ~-32 ~-1 ~-32 ~47 ~-1 ~47 grass_block
setblock ~ ~-1 ~ stone
setblock ~-32 ~-1 ~-32 sand
setblock ~-16 ~-1 ~-16 sand
setblock ~16 ~-1 ~16 sand
setblock ~32 ~-1 ~32 sand
setblock ~48 ~-1 ~48 stone

fill ~-32 ~ ~-32 ~47 ~3 ~47 air
fill ~-32 ~4 ~-32 ~47 ~7 ~47 air
fill ~-32 ~8 ~-32 ~47 ~11 ~47 air
fill ~-32 ~12 ~-32 ~47 ~15 ~47 air
fill ~-32 ~16 ~-32 ~47 ~19 ~47 air
fill ~-32 ~20 ~-32 ~47 ~3 ~47 air


execute positioned ~ ~ ~ run function rafidp:strasse_kreuzung

execute positioned ~-32 ~ ~ run function rafidp:strasse_x
execute positioned ~-16 ~ ~ run function rafidp:strasse_x
execute positioned ~16 ~ ~ run function rafidp:strasse_x
execute positioned ~32 ~ ~ run function rafidp:strasse_x

execute positioned ~ ~ ~-32 run function rafidp:strasse_y
execute positioned ~ ~ ~-16 run function rafidp:strasse_y
execute positioned ~ ~ ~16 run function rafidp:strasse_y
execute positioned ~ ~ ~32 run function rafidp:strasse_y
