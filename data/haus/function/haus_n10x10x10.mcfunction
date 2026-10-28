execute positioned ~ ~-6 ~ run function haus:keller10x10
execute positioned ~ ~-1 ~ run function haus:etage10x10
execute positioned ~ ~4 ~ run function haus:dach10x10
setblock ~5 ~ ~ oak_door[half=lower,facing=south,open=false]
setblock ~5 ~1 ~ oak_door[half=upper,facing=south,open=false]
setblock ~4 ~ ~ oak_door[half=lower,facing=east,open=true]
setblock ~4 ~1 ~ oak_door[half=upper,facing=east,open=true]
