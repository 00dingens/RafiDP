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
fill ~-11 ~19 ~19 ~11 ~19 ~20 stone
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

# Pfostenlaternen auf Treppe
execute positioned ~-11 ~19 ~19 run function burg:laterne
execute positioned ~11 ~19 ~19 run function burg:laterne

# Treppen hinterm Thron
# Treppenhaus
fill ~-5 ~20 ~44 ~5 ~60 ~50 stone_bricks hollow
# Bücherregale im Treppenhaus
fill ~-4 ~20 ~45 ~-4 ~60 ~49 bookshelf
fill ~4 ~20 ~45 ~4 ~60 ~49 bookshelf
# Gänge nach außen
fill ~-34 ~19 ~44 ~34 ~23 ~50 stone_bricks hollow
fill ~-34 ~29 ~44 ~34 ~33 ~50 stone_bricks hollow
fill ~-34 ~39 ~44 ~34 ~43 ~50 stone_bricks hollow
fill ~-34 ~49 ~44 ~34 ~53 ~50 stone_bricks hollow
# Türen am Ende der Gänge
setblock ~35 ~20 ~47 dirt
setblock ~34 ~20 ~47 dark_oak_door[half=lower,facing=west,open=false]
setblock ~34 ~21 ~47 dark_oak_door[half=upper,facing=west,open=false]
setblock ~-35 ~20 ~47 dirt
setblock ~-34 ~20 ~47 dark_oak_door[half=lower,facing=north,open=true]
setblock ~-34 ~21 ~47 dark_oak_door[half=upper,facing=north,open=true]

setblock ~35 ~30 ~47 dirt
setblock ~34 ~30 ~47 dark_oak_door[half=lower,facing=west,open=false]
setblock ~34 ~31 ~47 dark_oak_door[half=upper,facing=west,open=false]
setblock ~-35 ~30 ~47 dirt
setblock ~-34 ~30 ~47 dark_oak_door[half=lower,facing=north,open=true]
setblock ~-34 ~31 ~47 dark_oak_door[half=upper,facing=north,open=true]

setblock ~35 ~40 ~47 dirt
setblock ~34 ~40 ~47 dark_oak_door[half=lower,facing=west,open=false]
setblock ~34 ~41 ~47 dark_oak_door[half=upper,facing=west,open=false]
setblock ~-35 ~40 ~47 dirt
setblock ~-34 ~40 ~47 dark_oak_door[half=lower,facing=north,open=true]
setblock ~-34 ~41 ~47 dark_oak_door[half=upper,facing=north,open=true]

setblock ~35 ~50 ~47 dirt
setblock ~34 ~50 ~47 dark_oak_door[half=lower,facing=west,open=false]
setblock ~34 ~51 ~47 dark_oak_door[half=upper,facing=west,open=false]
setblock ~-35 ~50 ~47 dirt
setblock ~-34 ~50 ~47 dark_oak_door[half=lower,facing=north,open=true]
setblock ~-34 ~51 ~47 dark_oak_door[half=upper,facing=north,open=true]

# Türen am Ende der Geheimgänge
setblock ~29 ~24 ~47 stone_pressure_plate
setblock ~30 ~24 ~47 iron_door[half=lower,facing=west,open=false]
setblock ~30 ~25 ~47 iron_door[half=upper,facing=west,open=false]
setblock ~-29 ~24 ~47 stone_pressure_plate
setblock ~-30 ~24 ~47 iron_door[half=lower,facing=north,open=true]
setblock ~-30 ~25 ~47 iron_door[half=upper,facing=north,open=true]

setblock ~29 ~34 ~47 stone_pressure_plate
setblock ~30 ~34 ~47 iron_door[half=lower,facing=west,open=false]
setblock ~30 ~35 ~47 iron_door[half=upper,facing=west,open=false]
setblock ~-29 ~34 ~47 stone_pressure_plate
setblock ~-30 ~34 ~47 iron_door[half=lower,facing=north,open=true]
setblock ~-30 ~35 ~47 iron_door[half=upper,facing=north,open=true]

setblock ~29 ~44 ~47 stone_pressure_plate
setblock ~30 ~44 ~47 iron_door[half=lower,facing=west,open=false]
setblock ~30 ~45 ~47 iron_door[half=upper,facing=west,open=false]
setblock ~-29 ~44 ~47 stone_pressure_plate
setblock ~-30 ~44 ~47 iron_door[half=lower,facing=north,open=true]
setblock ~-30 ~45 ~47 iron_door[half=upper,facing=north,open=true]

setblock ~29 ~54 ~47 stone_pressure_plate
setblock ~30 ~54 ~47 iron_door[half=lower,facing=west,open=false]
setblock ~30 ~55 ~47 iron_door[half=upper,facing=west,open=false]
setblock ~-29 ~54 ~47 stone_pressure_plate
setblock ~-30 ~54 ~47 iron_door[half=lower,facing=north,open=true]
setblock ~-30 ~55 ~47 iron_door[half=upper,facing=north,open=true]

# Geländer hinter den Geheimgang-Türen
fill ~-34 ~24 ~44 ~-34 ~24 ~49 stone_brick_wall
fill ~-34 ~24 ~44 ~-31 ~24 ~44 stone_brick_wall
fill ~34 ~24 ~44 ~34 ~24 ~49 stone_brick_wall
fill ~34 ~24 ~44 ~31 ~24 ~44 stone_brick_wall

fill ~-34 ~34 ~44 ~-34 ~34 ~49 stone_brick_wall
fill ~-34 ~34 ~44 ~-31 ~34 ~44 stone_brick_wall
fill ~34 ~34 ~44 ~34 ~34 ~49 stone_brick_wall
fill ~34 ~34 ~44 ~31 ~34 ~44 stone_brick_wall

fill ~-34 ~44 ~44 ~-34 ~44 ~49 stone_brick_wall
fill ~-34 ~44 ~44 ~-31 ~44 ~44 stone_brick_wall
fill ~34 ~44 ~44 ~34 ~44 ~49 stone_brick_wall
fill ~34 ~44 ~44 ~31 ~44 ~44 stone_brick_wall

fill ~-34 ~54 ~44 ~-34 ~54 ~49 stone_brick_wall
fill ~-34 ~54 ~44 ~-31 ~54 ~44 stone_brick_wall
fill ~34 ~54 ~44 ~34 ~54 ~49 stone_brick_wall
fill ~34 ~54 ~44 ~31 ~54 ~44 stone_brick_wall

# Lücken für Treppen
fill ~4 ~23 ~49 ~1 ~23 ~49 air
fill ~-1 ~29 ~49 ~-5 ~29 ~49 air
fill ~-4 ~33 ~45 ~-1 ~33 ~45 air
fill ~1 ~39 ~45 ~5 ~39 ~45 air
fill ~4 ~43 ~49 ~1 ~43 ~49 air
fill ~-1 ~49 ~49 ~-5 ~49 ~49 air
# Treppen
execute positioned ~4 ~20 ~49 run function burg:treppe_w
execute positioned ~-4 ~30 ~45 run function burg:treppe_e
execute positioned ~4 ~40 ~49 run function burg:treppe_w
# Wand
fill ~-30 ~20 ~44 ~30 ~60 ~44 stone_bricks
# Tür
setblock ~ ~20 ~44 dark_oak_door[half=lower,facing=south,open=false]
setblock ~ ~21 ~44 dark_oak_door[half=upper,facing=south,open=false]
