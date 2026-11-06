tellraw @s "Mauern"
execute positioned ~ ~-1 ~ run function burg:mauern160x190

tellraw @s "Rundgang"
# Rundgang
execute positioned ~ ~-1 ~ run function burg:rundgang

# Thron Podest (vor Zimmern und Fackeln)
tellraw @s "Podest"
execute positioned ~ ~20 ~130 run function burg:podest

# Fackeln im inneren und überall
execute positioned ~ ~-1 ~ run function burg:fackeln

tellraw @s "Eingang"
execute positioned ~ ~-1 ~ run function burg:eingang

tellraw @s "Ecktürme"
execute positioned ~-90 ~-1 ~ run function burg:turm21
execute positioned ~70 ~-1 ~ run function burg:turm21
execute positioned ~-90 ~-1 ~190 run function burg:turm21
execute positioned ~70 ~-1 ~190 run function burg:turm21

tellraw @s "Seitentürme"
# Eingang
execute positioned ~-20 ~-1 ~20 run function burg:turm11
execute positioned ~10 ~-1 ~20 run function burg:turm11
# Vorderwand
execute positioned ~-50 ~-1 ~5 run function burg:turm11
execute positioned ~40 ~-1 ~5 run function burg:turm11
# Seitenwände von vorne nach hinten (link, rechts)
execute positioned ~-85 ~-1 ~40 run function burg:turm11
execute positioned ~75 ~-1 ~40 run function burg:turm11
execute positioned ~-85 ~-1 ~70 run function burg:turm11
execute positioned ~75 ~-1 ~70 run function burg:turm11
execute positioned ~-85 ~-1 ~100 run function burg:turm11
execute positioned ~75 ~-1 ~100 run function burg:turm11
execute positioned ~-85 ~-1 ~130 run function burg:turm11
execute positioned ~75 ~-1 ~130 run function burg:turm11
execute positioned ~-85 ~-1 ~160 run function burg:turm11
execute positioned ~75 ~-1 ~160 run function burg:turm11
# Rückwand
execute positioned ~-50 ~-1 ~195 run function burg:turm11
execute positioned ~40 ~-1 ~195 run function burg:turm11
execute positioned ~-20 ~-1 ~195 run function burg:turm11
execute positioned ~10 ~-1 ~195 run function burg:turm11

# Geländer reparieren
fill ~-80 ~121 ~10 ~80 ~121 ~200 air replace polished_deepslate_wall
fill ~-80 ~122 ~10 ~80 ~122 ~200 air replace polished_deepslate_wall

#Zimmer East
execute positioned ~40 ~19 ~30 run function burg:zimmer_east
execute positioned ~40 ~19 ~60 run function burg:zimmer_east
execute positioned ~40 ~19 ~90 run function burg:zimmer_east
execute positioned ~40 ~19 ~120 run function burg:zimmer_east
execute positioned ~40 ~19 ~150 run function burg:zimmer_east

execute positioned ~40 ~29 ~30 run function burg:zimmer_east
execute positioned ~40 ~29 ~60 run function burg:zimmer_east
execute positioned ~40 ~29 ~90 run function burg:zimmer_east
execute positioned ~40 ~29 ~120 run function burg:zimmer_east
execute positioned ~40 ~29 ~150 run function burg:zimmer_east

execute positioned ~40 ~39 ~30 run function burg:zimmer_east
execute positioned ~40 ~39 ~60 run function burg:zimmer_east
execute positioned ~40 ~39 ~90 run function burg:zimmer_east
execute positioned ~40 ~39 ~120 run function burg:zimmer_east
execute positioned ~40 ~39 ~150 run function burg:zimmer_east
fill ~35 ~40 ~175 ~35 ~40 ~179 air

execute positioned ~40 ~49 ~30 run function burg:zimmer_east
execute positioned ~40 ~49 ~60 run function burg:zimmer_east
execute positioned ~40 ~49 ~90 run function burg:zimmer_east
execute positioned ~40 ~49 ~120 run function burg:zimmer_east
execute positioned ~40 ~49 ~150 run function burg:zimmer_east
fill ~35 ~50 ~175 ~35 ~50 ~179 air

execute positioned ~40 ~59 ~30 run function burg:zimmer_east
execute positioned ~40 ~59 ~60 run function burg:zimmer_east
execute positioned ~40 ~59 ~90 run function burg:zimmer_east
execute positioned ~40 ~59 ~120 run function burg:zimmer_east
execute positioned ~40 ~59 ~150 run function burg:zimmer_east
fill ~35 ~60 ~175 ~35 ~60 ~179 air

execute positioned ~40 ~69 ~30 run function burg:zimmer_east
execute positioned ~40 ~69 ~60 run function burg:zimmer_east
execute positioned ~40 ~69 ~90 run function burg:zimmer_east
execute positioned ~40 ~69 ~120 run function burg:zimmer_east
execute positioned ~40 ~69 ~150 run function burg:zimmer_east
fill ~35 ~70 ~175 ~35 ~70 ~179 air

#Zimmer West
execute positioned ~-60 ~19 ~30 run function burg:zimmer_west
execute positioned ~-60 ~19 ~60 run function burg:zimmer_west
execute positioned ~-60 ~19 ~90 run function burg:zimmer_west
execute positioned ~-60 ~19 ~120 run function burg:zimmer_west
execute positioned ~-60 ~19 ~150 run function burg:zimmer_west

execute positioned ~-60 ~29 ~30 run function burg:zimmer_west
execute positioned ~-60 ~29 ~60 run function burg:zimmer_west
execute positioned ~-60 ~29 ~90 run function burg:zimmer_west
execute positioned ~-60 ~29 ~120 run function burg:zimmer_west
execute positioned ~-60 ~29 ~150 run function burg:zimmer_west

execute positioned ~-60 ~39 ~30 run function burg:zimmer_west
execute positioned ~-60 ~39 ~60 run function burg:zimmer_west
execute positioned ~-60 ~39 ~90 run function burg:zimmer_west
execute positioned ~-60 ~39 ~120 run function burg:zimmer_west
execute positioned ~-60 ~39 ~150 run function burg:zimmer_west
fill ~-35 ~40 ~175 ~-35 ~40 ~179 air

execute positioned ~-60 ~49 ~30 run function burg:zimmer_west
execute positioned ~-60 ~49 ~60 run function burg:zimmer_west
execute positioned ~-60 ~49 ~90 run function burg:zimmer_west
execute positioned ~-60 ~49 ~120 run function burg:zimmer_west
execute positioned ~-60 ~49 ~150 run function burg:zimmer_west
fill ~-35 ~50 ~175 ~-35 ~50 ~179 air

execute positioned ~-60 ~59 ~30 run function burg:zimmer_west
execute positioned ~-60 ~59 ~60 run function burg:zimmer_west
execute positioned ~-60 ~59 ~90 run function burg:zimmer_west
execute positioned ~-60 ~59 ~120 run function burg:zimmer_west
execute positioned ~-60 ~59 ~150 run function burg:zimmer_west
fill ~-35 ~60 ~175 ~-35 ~60 ~179 air

execute positioned ~-60 ~69 ~30 run function burg:zimmer_west
execute positioned ~-60 ~69 ~60 run function burg:zimmer_west
execute positioned ~-60 ~69 ~90 run function burg:zimmer_west
execute positioned ~-60 ~69 ~120 run function burg:zimmer_west
execute positioned ~-60 ~69 ~150 run function burg:zimmer_west
fill ~-35 ~70 ~175 ~-35 ~70 ~179 air

# Obere Riesenbalkone
fill ~-60 ~80 ~20 ~60 ~80 ~180 deepslate_tiles
fill ~-60 ~83 ~20 ~60 ~83 ~180 deepslate_tiles
# Geländer für obere Quergänge
fill ~-26 ~84 ~32 ~26 ~84 ~40 deepslate_brick_wall
fill ~-26 ~84 ~50 ~26 ~84 ~60 deepslate_brick_wall
fill ~-26 ~84 ~70 ~26 ~84 ~80 deepslate_brick_wall
fill ~-26 ~84 ~90 ~26 ~84 ~100 deepslate_brick_wall
# Wände für die Öffnungen für Obere Quergänge
fill ~-26 ~80 ~32 ~26 ~83 ~40 deepslate_tiles
fill ~-26 ~80 ~50 ~26 ~83 ~60 deepslate_tiles
fill ~-26 ~80 ~70 ~26 ~83 ~80 deepslate_tiles
fill ~-26 ~80 ~90 ~26 ~83 ~100 deepslate_tiles
# Öffnungen für Obere Quergänge
fill ~-25 ~80 ~33 ~25 ~84 ~39 air
fill ~-25 ~80 ~51 ~25 ~84 ~59 air
fill ~-25 ~80 ~71 ~25 ~84 ~79 air
fill ~-25 ~80 ~91 ~25 ~84 ~99 air

# Säulen
execute positioned ~-18 ~-1 ~42 run function burg:pillar7
execute positioned ~-18 ~-1 ~62 run function burg:pillar7
execute positioned ~-18 ~-1 ~82 run function burg:pillar7
execute positioned ~-18 ~-1 ~102 run function burg:pillar7
execute positioned ~12 ~-1 ~42 run function burg:pillar7
execute positioned ~12 ~-1 ~62 run function burg:pillar7
execute positioned ~12 ~-1 ~82 run function burg:pillar7
execute positioned ~12 ~-1 ~102 run function burg:pillar7


#Laternen
execute positioned ~-32 ~19 ~35 run function burg:laterne
execute positioned ~-32 ~19 ~55 run function burg:laterne
execute positioned ~-32 ~19 ~75 run function burg:laterne
execute positioned ~-32 ~19 ~95 run function burg:laterne
execute positioned ~-32 ~19 ~115 run function burg:laterne
execute positioned ~-32 ~19 ~135 run function burg:laterne
execute positioned ~32 ~19 ~35 run function burg:laterne
execute positioned ~32 ~19 ~55 run function burg:laterne
execute positioned ~32 ~19 ~75 run function burg:laterne
execute positioned ~32 ~19 ~95 run function burg:laterne
execute positioned ~32 ~19 ~115 run function burg:laterne
execute positioned ~32 ~19 ~135 run function burg:laterne


tellraw @s "Stepper"
# Stepper wiederherstellen
execute positioned 0 63 0 run function stepper:stepper100