# Von unten nach oben
fill ~ ~-20 ~ ~10 ~-30 ~10 deepslate_bricks hollow
fill ~ ~-10 ~ ~10 ~-20 ~10 deepslate_bricks hollow
fill ~ ~ ~ ~10 ~-10 ~10 deepslate_bricks hollow
fill ~ ~ ~ ~10 ~10 ~10 deepslate_bricks hollow
fill ~ ~10 ~ ~10 ~20 ~10 deepslate_bricks hollow
fill ~ ~20 ~ ~10 ~30 ~10 deepslate_bricks hollow
fill ~ ~30 ~ ~10 ~40 ~10 deepslate_bricks hollow
fill ~ ~40 ~ ~10 ~50 ~10 deepslate_bricks hollow
fill ~ ~50 ~ ~10 ~60 ~10 deepslate_bricks hollow
fill ~ ~60 ~ ~10 ~70 ~10 deepslate_bricks hollow
fill ~ ~70 ~ ~10 ~80 ~10 deepslate_bricks hollow
fill ~ ~80 ~ ~10 ~90 ~10 deepslate_bricks hollow
fill ~ ~90 ~ ~10 ~100 ~10 deepslate_bricks hollow
fill ~ ~100 ~ ~10 ~110 ~10 deepslate_bricks hollow
fill ~ ~110 ~ ~10 ~120 ~10 deepslate_bricks hollow

# Rundgang oben
fill ~ ~121 ~ ~10 ~121 ~10 polished_deepslate
# Boden
fill ~-1 ~121 ~-1 ~11 ~121 ~-1 polished_deepslate_stairs[facing=south,half=top]
fill ~-1 ~121 ~11 ~11 ~121 ~11 polished_deepslate_stairs[facing=north,half=top]
fill ~-1 ~121 ~-1 ~-1 ~121 ~11 polished_deepslate_stairs[facing=east,half=top]
fill ~11 ~121 ~-1 ~11 ~121 ~11 polished_deepslate_stairs[facing=west,half=top]
# Geländer
fill ~-1 ~122 ~-1 ~11 ~122 ~-1 polished_deepslate_wall
fill ~-1 ~122 ~11 ~11 ~122 ~11 polished_deepslate_wall
fill ~-1 ~122 ~-1 ~-1 ~122 ~11 polished_deepslate_wall
fill ~11 ~122 ~-1 ~11 ~122 ~11 polished_deepslate_wall
# Variante Stacheln
setblock ~-1 ~123 ~-1 polished_deepslate_wall
setblock ~1 ~123 ~-1 polished_deepslate_wall
setblock ~3 ~123 ~-1 polished_deepslate_wall
setblock ~5 ~123 ~-1 polished_deepslate_wall
setblock ~7 ~123 ~-1 polished_deepslate_wall
setblock ~9 ~123 ~-1 polished_deepslate_wall
setblock ~11 ~123 ~-1 polished_deepslate_wall
setblock ~-1 ~123 ~11 polished_deepslate_wall
setblock ~1 ~123 ~11 polished_deepslate_wall
setblock ~3 ~123 ~11 polished_deepslate_wall
setblock ~5 ~123 ~11 polished_deepslate_wall
setblock ~7 ~123 ~11 polished_deepslate_wall
setblock ~9 ~123 ~11 polished_deepslate_wall
setblock ~11 ~123 ~11 polished_deepslate_wall
setblock ~11 ~123 ~-1 polished_deepslate_wall
setblock ~11 ~123 ~1 polished_deepslate_wall
setblock ~11 ~123 ~3 polished_deepslate_wall
setblock ~11 ~123 ~5 polished_deepslate_wall
setblock ~11 ~123 ~7 polished_deepslate_wall
setblock ~11 ~123 ~9 polished_deepslate_wall
setblock ~11 ~123 ~11 polished_deepslate_wall
setblock ~-1 ~123 ~-1 polished_deepslate_wall
setblock ~-1 ~123 ~1 polished_deepslate_wall
setblock ~-1 ~123 ~3 polished_deepslate_wall
setblock ~-1 ~123 ~5 polished_deepslate_wall
setblock ~-1 ~123 ~7 polished_deepslate_wall
setblock ~-1 ~123 ~9 polished_deepslate_wall
setblock ~-1 ~123 ~11 polished_deepslate_wall

# Variante Geländer-Unterbrechung
#fill ~-1 ~122 ~2 ~11 ~122 ~3 air
#fill ~-1 ~122 ~7 ~11 ~122 ~8 air
#fill ~2 ~122 ~-1 ~3 ~122 ~11 air
#fill ~7 ~122 ~-1 ~8 ~122 ~11 air

# Großes geländer unterbrechen
fill ~ ~122 ~ ~10 ~122 ~10 air

#Fackel bei 5,5 in jeder Etage
setblock ~5 ~-29 ~5 torch
setblock ~5 ~-19 ~5 torch
setblock ~5 ~-9 ~5 torch
setblock ~5 ~1 ~5 torch
setblock ~5 ~11 ~5 torch
setblock ~5 ~21 ~5 torch
setblock ~5 ~31 ~5 torch
setblock ~5 ~41 ~5 torch
setblock ~5 ~51 ~5 torch
setblock ~5 ~61 ~5 torch
setblock ~5 ~71 ~5 torch
setblock ~5 ~81 ~5 torch
setblock ~5 ~91 ~5 torch
setblock ~5 ~101 ~5 torch
setblock ~5 ~111 ~5 torch
# Fackeln oben drauf
setblock ~ ~122 ~ torch
setblock ~10 ~122 ~ torch
setblock ~ ~122 ~10 torch
setblock ~10 ~122 ~10 torch

#Fackeln unten außen
setblock ~2 ~3 ~-1 wall_torch[facing=north]
setblock ~8 ~3 ~-1 wall_torch[facing=north]
setblock ~2 ~3 ~11 wall_torch[facing=south]
setblock ~8 ~3 ~11 wall_torch[facing=south]
setblock ~11 ~3 ~2 wall_torch[facing=east]
setblock ~11 ~3 ~8 wall_torch[facing=east]
setblock ~-1 ~3 ~2 wall_torch[facing=west]
setblock ~-1 ~3 ~8 wall_torch[facing=west]
