tellraw @s "eingang"

fill ~-10 ~1 ~20 ~10 ~40 ~20 air

fill ~-10 ~1 ~10 ~10 ~41 ~10 reinforced_deepslate
fill ~-9 ~1 ~10 ~9 ~40 ~10 air
fill ~-9 ~1 ~9 ~-9 ~40 ~1 spruce_wood
fill ~9 ~1 ~9 ~9 ~40 ~1 spruce_wood

execute positioned ~-4 ~ ~11 run function burg:treppe_s_10
execute positioned ~4 ~ ~11 run function burg:treppe_s_10
execute positioned ~-4 ~10 ~21 run function burg:treppe_s_10
execute positioned ~4 ~10 ~21 run function burg:treppe_s_10
