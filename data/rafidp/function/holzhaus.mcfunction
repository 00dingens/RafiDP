tellraw @s [{"text":"Holzhütte Luxus","color":"gray"}]
fill ~1 ~ ~1 ~10 ~9 ~10 oak_wood hollow
fill ~1 ~2 ~1 ~10 ~4 ~10 glass
fill ~1 ~7 ~1 ~10 ~8 ~10 glass
fill ~2 ~1 ~2 ~9 ~8 ~9 air
fill ~1 ~5 ~1 ~10 ~5 ~10 oak_wood
fill ~2 ~10 ~2 ~9 ~10 ~9 oak_wood
fill ~3 ~11 ~3 ~8 ~11 ~8 oak_wood
fill ~4 ~12 ~4 ~7 ~12 ~7 oak_wood
fill ~5 ~13 ~5 ~6 ~13 ~6 oak_wood
setblock ~6 ~1 ~1 oak_door[half=lower,facing=south,open=false]
setblock ~6 ~2 ~1 oak_door[half=upper,facing=south,open=false]
setblock ~5 ~1 ~1 oak_door[half=lower,facing=east,open=true]
setblock ~5 ~2 ~1 oak_door[half=upper,facing=east,open=true]
fill ~5 ~ ~ ~6 ~ ~ oak_stairs[half=bottom,facing=south,shape=straight]
setblock ~7 ~ ~ oak_stairs[half=bottom,facing=west,shape=outer_left]
setblock ~4 ~ ~ oak_stairs[half=bottom,facing=east,shape=outer_right]
