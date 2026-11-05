# Temporär: alten kram weg
#fill ~-31 ~ ~ ~ ~20 ~20 air
#fill ~ ~ ~ ~31 ~20 ~20 air

# Treppen rechts
execute positioned ~-11 ~ ~ run function burg:treppe_flach_w_10
execute positioned ~-21 ~5 ~ run function burg:treppe_flach_w_10
fill ~-30 ~9 ~ ~-39 ~9 ~23 stone
fill ~-19 ~ ~11 ~-29 ~15 ~11 stone_brick_wall
execute positioned ~30 ~10 ~12 run function burg:treppe_flach_w_10
# Treppen links
execute positioned ~11 ~ ~ run function burg:treppe_flach_e_10
execute positioned ~21 ~5 ~ run function burg:treppe_flach_e_10
fill ~30 ~9 ~ ~39 ~9 ~23 stone
fill ~19 ~ ~11 ~29 ~15 ~11 stone_brick_wall
execute positioned ~-30 ~10 ~12 run function burg:treppe_flach_e_10

# Thron-Boden
fill ~-30 ~19 ~21 ~30 ~19 ~50 stone
fill ~-30 ~19 ~21 ~30 ~ ~21 stone
# Thron-Wände
fill ~-30 ~-1 ~21 ~-40 ~60 ~50 stone_bricks hollow
fill ~30 ~-1 ~21 ~40 ~60 ~50 stone_bricks hollow

# Oberes Treppenstück
fill ~-20 ~15 ~10 ~20 ~15 ~20 stone_slab
fill ~-19 ~15 ~11 ~19 ~15 ~20 stone
fill ~-18 ~16 ~12 ~18 ~16 ~20 stone_slab
fill ~-17 ~16 ~13 ~17 ~16 ~20 stone
fill ~-16 ~17 ~14 ~16 ~17 ~20 stone_slab
fill ~-15 ~17 ~15 ~15 ~17 ~20 stone
fill ~-14 ~18 ~16 ~14 ~18 ~20 stone_slab
fill ~-13 ~18 ~17 ~13 ~18 ~20 stone
fill ~-12 ~19 ~18 ~12 ~19 ~20 stone_slab
#fill ~-11 ~19 ~19 ~11 ~19 ~20 stone
#fill ~-10 ~20 ~20 ~10 ~20 ~20 stone_slab
# Treppen Balkon
fill ~-21 ~14 ~5 ~21 ~14 ~20 stone
fill ~-21 ~14 ~5 ~-21 ~15 ~11 stone_brick_wall
fill ~21 ~14 ~5 ~21 ~15 ~11 stone_brick_wall
fill ~-21 ~14 ~5 ~21 ~15 ~5 stone_brick_wall
# Fackeln auf Balkonmauer
setblock ~-29 ~16 ~11 torch
setblock ~-27 ~16 ~11 torch
setblock ~-25 ~16 ~11 torch
setblock ~-23 ~16 ~11 torch
setblock ~-21 ~16 ~11 torch
setblock ~-21 ~16 ~9 torch
setblock ~-21 ~16 ~7 torch
setblock ~-21 ~16 ~5 torch
setblock ~-19 ~16 ~5 torch
setblock ~-17 ~16 ~5 torch
setblock ~-15 ~16 ~5 torch
setblock ~-13 ~16 ~5 torch
setblock ~-11 ~16 ~5 torch
setblock ~-9 ~16 ~5 torch
setblock ~-7 ~16 ~5 torch
setblock ~-5 ~16 ~5 torch
setblock ~-3 ~16 ~5 torch
setblock ~-1 ~16 ~5 torch
setblock ~1 ~16 ~5 torch
setblock ~3 ~16 ~5 torch
setblock ~5 ~16 ~5 torch
setblock ~7 ~16 ~5 torch
setblock ~9 ~16 ~5 torch
setblock ~11 ~16 ~5 torch
setblock ~13 ~16 ~5 torch
setblock ~15 ~16 ~5 torch
setblock ~17 ~16 ~5 torch
setblock ~19 ~16 ~5 torch
setblock ~21 ~16 ~5 torch
setblock ~21 ~16 ~7 torch
setblock ~21 ~16 ~9 torch
setblock ~21 ~16 ~11 torch
setblock ~23 ~16 ~11 torch
setblock ~25 ~16 ~11 torch
setblock ~27 ~16 ~11 torch
setblock ~29 ~16 ~11 torch

# Laternen unterm Thronboden
setblock ~-20 ~13 ~7 lantern[hanging=true]
setblock ~-10 ~13 ~7 lantern[hanging=true]
setblock ~ ~13 ~7 lantern[hanging=true]
setblock ~10 ~13 ~7 lantern[hanging=true]
setblock ~20 ~13 ~7 lantern[hanging=true]

setblock ~-20 ~13 ~15 lantern[hanging=true]
setblock ~-10 ~13 ~15 lantern[hanging=true]
setblock ~ ~13 ~15 lantern[hanging=true]
setblock ~10 ~13 ~15 lantern[hanging=true]
setblock ~20 ~13 ~15 lantern[hanging=true]

# Fackeln treppe unten
setblock ~20 ~5 ~ torch
setblock ~30 ~10 ~ torch
setblock ~-20 ~5 ~ torch
setblock ~-30 ~10 ~ torch

# Fackeln Treppe oben
setblock ~-30 ~13 ~20 wall_torch[facing=north]
setblock ~30 ~13 ~20 wall_torch[facing=north]


# Pfostenlaternen
execute positioned ~-12 ~19 ~17 run function burg:laterne
execute positioned ~ ~19 ~17 run function burg:laterne
execute positioned ~12 ~19 ~17 run function burg:laterne