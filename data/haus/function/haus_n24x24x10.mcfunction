execute positioned ~ ~-6 ~ run function haus:keller24x24
execute positioned ~ ~-1 ~ run function haus:etage24x24_a
execute positioned ~ ~4 ~ run function haus:etage24x24_b
execute positioned ~ ~9 ~ run function haus:dach24x24

fill ~11 ~2 ~ ~12 ~2 ~ light_gray_concrete
setblock ~12 ~ ~ oak_door[half=lower,facing=south,open=false]
setblock ~12 ~1 ~ oak_door[half=upper,facing=south,open=false]
setblock ~11 ~ ~ oak_door[half=lower,facing=east,open=true]
setblock ~11 ~1 ~ oak_door[half=upper,facing=east,open=true]

