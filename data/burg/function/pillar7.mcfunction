# Laternenaufhängung
fill ~3 ~26 ~-2 ~3 ~26 ~8 polished_blackstone_wall
fill ~-2 ~26 ~3 ~8 ~26 ~3 polished_blackstone_wall
#Laternen
setblock ~3 ~25 ~-2 lantern[hanging=true]
setblock ~3 ~25 ~8 lantern[hanging=true]
setblock ~8 ~25 ~3 lantern[hanging=true]
setblock ~-2 ~25 ~3 lantern[hanging=true]

# Säule
fill ~2 ~-30 ~ ~4 ~120 ~6 polished_blackstone
fill ~1 ~-30 ~1 ~5 ~120 ~5 polished_blackstone
fill ~ ~-30 ~2 ~6 ~120 ~4 polished_blackstone
# Innerer Leitergang
fill ~3 ~-30 ~3 ~3 ~120 ~3 air
fill ~3 ~-30 ~3 ~3 ~120 ~3 ladder[facing=south]


#Fackeln unten außen
#setblock ~3 ~24 ~-1 wall_torch[facing=north]
#setblock ~3 ~24 ~7 wall_torch[facing=south]
#setblock ~7 ~24 ~3 wall_torch[facing=east]
#setblock ~-1 ~24 ~3 wall_torch[facing=west]
