tellraw @s "Mauern"
execute positioned ~ ~-1 ~ run function burg:mauern160x190

tellraw @s "Rundgang"
# Rundgang
execute positioned ~ ~-1 ~ run function burg:rundgang

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

execute positioned ~40 ~49 ~30 run function burg:zimmer_east
execute positioned ~40 ~49 ~60 run function burg:zimmer_east
execute positioned ~40 ~49 ~90 run function burg:zimmer_east
execute positioned ~40 ~49 ~120 run function burg:zimmer_east
execute positioned ~40 ~49 ~150 run function burg:zimmer_east

execute positioned ~40 ~59 ~30 run function burg:zimmer_east
execute positioned ~40 ~59 ~60 run function burg:zimmer_east
execute positioned ~40 ~59 ~90 run function burg:zimmer_east
execute positioned ~40 ~59 ~120 run function burg:zimmer_east
execute positioned ~40 ~59 ~150 run function burg:zimmer_east

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

execute positioned ~-60 ~49 ~30 run function burg:zimmer_west
execute positioned ~-60 ~49 ~60 run function burg:zimmer_west
execute positioned ~-60 ~49 ~90 run function burg:zimmer_west
execute positioned ~-60 ~49 ~120 run function burg:zimmer_west
execute positioned ~-60 ~49 ~150 run function burg:zimmer_west

execute positioned ~-60 ~59 ~30 run function burg:zimmer_west
execute positioned ~-60 ~59 ~60 run function burg:zimmer_west
execute positioned ~-60 ~59 ~90 run function burg:zimmer_west
execute positioned ~-60 ~59 ~120 run function burg:zimmer_west
execute positioned ~-60 ~59 ~150 run function burg:zimmer_west


tellraw @s "Stepper"
# Stepper wiederherstellen
execute positioned 0 63 0 run function stepper:stepper100