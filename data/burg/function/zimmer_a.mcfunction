# Zimmergröße x=1-19, y=1-12, z=1-6

# Kamin an Nordwand
execute positioned ~4 ~1 ~1 run function einrichtung:kamin_n

# Betten an Ostwand
setblock ~18 ~1 ~10 light_gray_bed[facing=east,part=foot]
setblock ~19 ~1 ~10 light_gray_bed[facing=east,part=head]
setblock ~18 ~1 ~6 light_gray_bed[facing=east,part=foot]
setblock ~19 ~1 ~6 light_gray_bed[facing=east,part=head]
setblock ~19 ~1 ~9 chiseled_bookshelf[facing=west]
setblock ~19 ~1 ~7 chiseled_bookshelf[facing=west]

#Blumentopf
setblock ~11 ~1 ~2 podzol
setblock ~11 ~2 ~2 torchflower
setblock ~10 ~1 ~2 spruce_trapdoor[half=bottom,open=true,facing=west]
setblock ~11 ~1 ~1 spruce_trapdoor[half=bottom,open=true,facing=north]
setblock ~11 ~1 ~3 spruce_trapdoor[half=bottom,open=true,facing=south]
setblock ~12 ~1 ~2 spruce_trapdoor[half=bottom,open=true,facing=east]
