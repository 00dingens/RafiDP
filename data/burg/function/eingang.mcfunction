# Angeln bei 10
fill ~-10 ~1 ~10 ~10 ~41 ~10 reinforced_deepslate
# Wände Treppengang
fill ~-12 ~1 ~11 ~12 ~43 ~20 deepslate_bricks
# Öffnung
fill ~-9 ~1 ~10 ~9 ~40 ~20 air

# Türen
fill ~-9 ~1 ~9 ~-9 ~40 ~1 spruce_wood
fill ~9 ~1 ~9 ~9 ~40 ~1 spruce_wood

# Treppen
execute positioned ~-4 ~ ~11 run function burg:treppe_s_10
execute positioned ~4 ~ ~11 run function burg:treppe_s_10
execute positioned ~-4 ~10 ~21 run function burg:treppe_s_10
execute positioned ~4 ~10 ~21 run function burg:treppe_s_10
