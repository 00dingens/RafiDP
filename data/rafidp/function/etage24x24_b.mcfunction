execute positioned ~ ~ ~ run function rafidp:etage24x24

fill ~1 ~ ~13 ~22 ~4 ~13 light_gray_concrete
setblock ~12 ~1 ~13 oak_door[half=lower,facing=south,open=false]
setblock ~12 ~2 ~13 oak_door[half=upper,facing=south,open=false]
setblock ~11 ~1 ~13 oak_door[half=lower,facing=east,open=true]
setblock ~11 ~2 ~13 oak_door[half=upper,facing=east,open=true]

fill ~9 ~ ~13 ~9 ~4 ~6 light_gray_concrete
setblock ~9 ~1 ~12 oak_door[half=lower,facing=west,open=false]
setblock ~9 ~2 ~12 oak_door[half=upper,facing=west,open=false]
setblock ~9 ~1 ~11 oak_door[half=lower,facing=south,open=true]
setblock ~9 ~2 ~11 oak_door[half=upper,facing=south,open=true]
setblock ~10 ~3 ~10 wall_torch[facing=east]

fill ~14 ~ ~6 ~9 ~4 ~6 light_gray_concrete

fill ~14 ~ ~13 ~14 ~4 ~1 light_gray_concrete
setblock ~14 ~1 ~11 oak_door[half=lower,facing=east,open=false]
setblock ~14 ~2 ~11 oak_door[half=upper,facing=east,open=false]
setblock ~14 ~1 ~12 oak_door[half=lower,facing=north,open=true]
setblock ~14 ~2 ~12 oak_door[half=upper,facing=north,open=true]
setblock ~13 ~3 ~10 wall_torch[facing=west]

fill ~12 ~ ~6 ~13 ~ ~10 air
fill ~12 ~ ~10 ~13 ~ ~10 stone_stairs[half=bottom,facing=south,shape=straight]
fill ~12 ~-1 ~9 ~13 ~-1 ~9 stone_stairs[half=bottom,facing=south,shape=straight]
fill ~12 ~-2 ~8 ~13 ~-2 ~8 stone_stairs[half=bottom,facing=south,shape=straight]
fill ~12 ~-3 ~7 ~13 ~-3 ~7 stone_stairs[half=bottom,facing=south,shape=straight]
fill ~12 ~-4 ~6 ~13 ~-4 ~6 stone_stairs[half=bottom,facing=south,shape=straight]
