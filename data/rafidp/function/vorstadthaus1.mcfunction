tellraw @s [{"text":"Vorstadthaus 1 N","color":"gray"}]
fill ~ ~-22 ~ ~15 ~-13 ~15 stone
fill ~ ~-12 ~ ~15 ~-2 ~15 dirt
fill ~ ~-1 ~ ~15 ~-1 ~15 grass_block
fill ~7 ~-1 ~ ~8 ~-1 ~5 gravel
fill ~ ~ ~ ~15 ~15 ~15 air
fill ~3 ~ ~3 ~12 ~9 ~12 oak_wood hollow
fill ~3 ~2 ~3 ~12 ~4 ~12 glass
fill ~3 ~7 ~3 ~12 ~8 ~12 glass
fill ~4 ~1 ~4 ~11 ~8 ~11 air
fill ~3 ~5 ~3 ~12 ~5 ~12 oak_wood
fill ~4 ~10 ~4 ~11 ~10 ~11 oak_wood
fill ~5 ~11 ~5 ~10 ~11 ~10 oak_wood
fill ~6 ~12 ~6 ~9 ~12 ~9 oak_wood
fill ~7 ~13 ~7 ~8 ~13 ~8 oak_wood
setblock ~8 ~1 ~3 oak_door[half=lower,facing=south,open=false]
setblock ~8 ~2 ~3 oak_door[half=upper,facing=south,open=false]
setblock ~7 ~1 ~3 oak_door[half=lower,facing=east,open=true]
setblock ~7 ~2 ~3 oak_door[half=upper,facing=east,open=true]
fill ~7 ~ ~2 ~8 ~ ~2 oak_stairs[half=bottom,facing=south,shape=straight]
setblock ~9 ~ ~2 oak_stairs[half=bottom,facing=west,shape=outer_left]
setblock ~6 ~ ~2 oak_stairs[half=bottom,facing=east,shape=outer_right]
