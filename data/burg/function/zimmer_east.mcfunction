
#Gang zum Turm
fill ~20 ~ ~14 ~35 ~3 ~17 deepslate_bricks hollow
# Fackel in der Burgmauer
setblock ~28 ~4 ~15 torch

# Tür zum Turm
setblock ~35 ~1 ~16 oak_door[half=lower,facing=west,open=false]
setblock ~35 ~2 ~16 oak_door[half=upper,facing=west,open=false]
setblock ~35 ~1 ~15 oak_door[half=lower,facing=south,open=true]
setblock ~35 ~2 ~15 oak_door[half=upper,facing=south,open=true]

#Gang
fill ~-5 ~ ~ ~ ~ ~30 deepslate_bricks
fill ~-5 ~1 ~ ~-5 ~1 ~30 spruce_fence
setblock ~-2 ~1 ~5 torch
setblock ~-2 ~1 ~25 torch

#Zimmer
execute positioned ~ ~ ~ run function burg:zimmer