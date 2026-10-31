fill ~ ~ ~ ~20 ~10 ~30 stone_bricks hollow
fill ~ ~ ~1 ~20 ~6 ~30 stone_bricks hollow
fill ~ ~ ~13 ~20 ~6 ~18 stone_bricks hollow

# Türen
setblock ~20 ~1 ~16 oak_door[half=lower,facing=west,open=false]
setblock ~20 ~2 ~16 oak_door[half=upper,facing=west,open=false]
setblock ~20 ~1 ~15 oak_door[half=lower,facing=south,open=true]
setblock ~20 ~2 ~15 oak_door[half=upper,facing=south,open=true]

setblock ~ ~1 ~15 oak_door[half=lower,facing=east,open=false]
setblock ~ ~2 ~15 oak_door[half=upper,facing=east,open=false]
setblock ~ ~1 ~16 oak_door[half=lower,facing=north,open=true]
setblock ~ ~2 ~16 oak_door[half=upper,facing=north,open=true]

# Fackeln oben
setblock ~5 ~7 ~5 torch
setblock ~15 ~7 ~5 torch
setblock ~5 ~7 ~15 torch
setblock ~15 ~7 ~15 torch
setblock ~5 ~7 ~25 torch
setblock ~15 ~7 ~25 torch

# Fackeln unten
setblock ~5 ~1 ~5 torch
setblock ~15 ~1 ~5 torch
setblock ~5 ~1 ~25 torch
setblock ~15 ~1 ~25 torch

#Fackeln Flur
setblock ~1 ~3 ~15 wall_torch[facing=east]
setblock ~1 ~3 ~16 wall_torch[facing=east]
setblock ~19 ~3 ~15 wall_torch[facing=west]
setblock ~19 ~3 ~16 wall_torch[facing=west]



# Fackeln überm ganzen temporär
setblock ~5 ~11 ~5 torch
setblock ~15 ~11 ~5 torch
setblock ~5 ~11 ~15 torch
setblock ~15 ~11 ~15 torch
setblock ~5 ~11 ~25 torch
setblock ~15 ~11 ~25 torch