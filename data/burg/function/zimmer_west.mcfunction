
#Gang zum Turm
fill ~ ~ ~14 ~-15 ~3 ~17 deepslate_bricks hollow
# Fackel in der Burgmauer
setblock ~-8 ~4 ~15 torch

# Tür zum Turm
setblock ~-15 ~1 ~15 oak_door[half=lower,facing=east,open=false]
setblock ~-15 ~2 ~15 oak_door[half=upper,facing=east,open=false]
setblock ~-15 ~1 ~16 oak_door[half=lower,facing=north,open=true]
setblock ~-15 ~2 ~16 oak_door[half=upper,facing=north,open=true]

#Gang
fill ~25 ~ ~ ~20 ~ ~30 deepslate_bricks
fill ~25 ~1 ~ ~25 ~1 ~30 spruce_fence
setblock ~22 ~1 ~5 torch
setblock ~22 ~1 ~25 torch

#Zimmer
execute positioned ~ ~ ~ run function burg:zimmer