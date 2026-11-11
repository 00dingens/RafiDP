# Zimmergröße x=1-19, y=1-12, z=1-6
# Kamin an Südwand
execute positioned ~6 ~1 ~11 run function einrichtung:kamin_s

# Bett an Westwand
setblock ~2 ~1 ~6 light_gray_bed[facing=west,part=foot]
setblock ~1 ~1 ~6 light_gray_bed[facing=west,part=head]
setblock ~1 ~1 ~5 chiseled_bookshelf[facing=east]
setblock ~1 ~1 ~7 chiseled_bookshelf[facing=east]

#Blumentopf
setblock ~18 ~1 ~2 podzol
setblock ~18 ~2 ~2 cherry_sapling
setblock ~17 ~1 ~2 spruce_trapdoor[half=bottom,open=true,facing=west]
setblock ~18 ~1 ~1 spruce_trapdoor[half=bottom,open=true,facing=north]
setblock ~18 ~1 ~3 spruce_trapdoor[half=bottom,open=true,facing=south]
setblock ~19 ~1 ~2 spruce_trapdoor[half=bottom,open=true,facing=east]
