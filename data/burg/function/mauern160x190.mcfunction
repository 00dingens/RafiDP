# Boden unten
fill ~-80 ~ ~10 ~80 ~ ~200 deepslate_tiles
# Boden Saal
fill ~-60 ~17 ~20 ~60 ~17 ~180 deepslate_tiles
fill ~-60 ~18 ~20 ~60 ~18 ~180 deepslate_tiles
fill ~-60 ~19 ~20 ~60 ~19 ~180 deepslate_tiles
fill ~-60 ~20 ~20 ~60 ~20 ~180 deepslate_tiles
# Labyrinth
execute positioned ~-60 ~20 ~25 run function mathe:labyrinth40x50

# Äußere Mauern 3 Schichten von außen nach innen (rechts, links, vorne, hinten)
fill ~-80 ~-30 ~10 ~-80 ~120 ~200 deepslate
fill ~80 ~-30 ~10 ~80 ~120 ~200 deepslate
fill ~-80 ~-30 ~10 ~80 ~120 ~10 deepslate
fill ~-80 ~-30 ~200 ~80 ~120 ~200 deepslate

fill ~-79 ~-30 ~10 ~-79 ~120 ~200 deepslate
fill ~79 ~-30 ~10 ~79 ~120 ~200 deepslate
fill ~-80 ~-30 ~11 ~80 ~120 ~11 deepslate
fill ~-80 ~-30 ~199 ~80 ~120 ~199 deepslate

fill ~-78 ~-30 ~10 ~-78 ~120 ~200 deepslate
fill ~78 ~-30 ~10 ~78 ~120 ~200 deepslate
fill ~-80 ~-30 ~12 ~80 ~120 ~12 deepslate
fill ~-80 ~-30 ~198 ~80 ~120 ~198 deepslate

# Innere Mauern 3 Schichten von innen nach außen (rechts, links, vorne, hinten)
fill ~-60 ~-30 ~20 ~-60 ~120 ~180 deepslate
fill ~60 ~-30 ~20 ~60 ~120 ~180 deepslate
fill ~-62 ~-30 ~20 ~62 ~120 ~20 deepslate
fill ~-62 ~-30 ~180 ~62 ~120 ~180 deepslate

fill ~-61 ~-30 ~20 ~-61 ~120 ~180 deepslate
fill ~61 ~-30 ~20 ~61 ~120 ~180 deepslate
fill ~-62 ~-30 ~19 ~62 ~120 ~19 deepslate
fill ~-62 ~-30 ~181 ~62 ~120 ~181 deepslate

fill ~-62 ~-30 ~20 ~-62 ~120 ~180 deepslate
fill ~62 ~-30 ~20 ~62 ~120 ~180 deepslate
fill ~-62 ~-30 ~18 ~62 ~120 ~18 deepslate
fill ~-62 ~-30 ~182 ~62 ~120 ~182 deepslate

# "Rundgang"
# Decke
fill ~-80 ~121 ~10 ~80 ~121 ~200 polished_deepslate
fill ~-79 ~120 ~11 ~79 ~120 ~199 deepslate
fill ~-79 ~119 ~11 ~79 ~119 ~199 deepslate
fill ~-79 ~118 ~11 ~79 ~118 ~199 deepslate
fill ~-60 ~118 ~20 ~60 ~118 ~180 polished_deepslate
# Labyrinth
execute positioned ~-79 ~121 ~11 run function mathe:labyrinth53x63
# Rand-Treppe
fill ~-81 ~121 ~9 ~81 ~121 ~9 polished_deepslate_stairs[facing=south,half=top]
fill ~-81 ~121 ~201 ~81 ~121 ~201 polished_deepslate_stairs[facing=north,half=top]
fill ~81 ~121 ~9 ~81 ~121 ~201 polished_deepslate_stairs[facing=west,half=top]
fill ~-81 ~121 ~9 ~-81 ~121 ~201 polished_deepslate_stairs[facing=east,half=top]
# Rand-Geländer
fill ~-81 ~122 ~9 ~81 ~122 ~9 polished_deepslate_wall
fill ~-81 ~122 ~201 ~81 ~122 ~201 polished_deepslate_wall
fill ~81 ~122 ~9 ~81 ~122 ~201 polished_deepslate_wall
fill ~-81 ~122 ~9 ~-81 ~122 ~201 polished_deepslate_wall


# Speisesaal

# Mauern
fill ~-60 ~122 ~20 ~-60 ~149 ~180 deepslate
fill ~60 ~122 ~20 ~60 ~149 ~180 deepslate
fill ~-60 ~122 ~20 ~60 ~149 ~20 deepslate
fill ~-60 ~122 ~180 ~60 ~149 ~180 deepslate

# Pfette
fill ~-1 ~148 ~21 ~1 ~150 ~179 dark_oak_log[axis=z] hollow

# Trägerbalken mit Stütze
fill ~-60 ~122 ~59 ~-58 ~147 ~61 deepslate hollow
fill ~60 ~122 ~59 ~58 ~147 ~61 deepslate hollow
fill ~-59 ~147 ~59 ~59 ~149 ~61 dark_oak_log[axis=x] hollow
fill ~-60 ~122 ~99 ~-58 ~147 ~101 deepslate hollow
fill ~60 ~122 ~99 ~58 ~147 ~101 deepslate hollow
fill ~-59 ~147 ~99 ~59 ~149 ~101 dark_oak_log[axis=x] hollow
fill ~-60 ~122 ~139 ~-58 ~147 ~141 deepslate hollow
fill ~60 ~122 ~139 ~58 ~147 ~141 deepslate hollow
fill ~-59 ~147 ~139 ~59 ~149 ~141 dark_oak_log[axis=x] hollow

# Kerzen in Pfette
fill ~ ~149 ~22 ~ ~150 ~178 air
fill ~ ~149 ~24 ~ ~149 ~176 candle[candles=2,lit=true]

# Kerzen in Trägern
fill ~-59 ~148 ~60 ~59 ~149 ~60 air
fill ~3 ~148 ~60 ~55 ~148 ~60 candle[candles=2,lit=true]
fill ~-3 ~148 ~60 ~-55 ~148 ~60 candle[candles=2,lit=true]
fill ~-59 ~148 ~100 ~59 ~149 ~100 air
fill ~3 ~148 ~100 ~55 ~148 ~100 candle[candles=2,lit=true]
fill ~-3 ~148 ~100 ~-55 ~148 ~100 candle[candles=2,lit=true]
fill ~-59 ~148 ~140 ~59 ~149 ~140 air
fill ~3 ~148 ~140 ~55 ~148 ~140 candle[candles=2,lit=true]
fill ~-3 ~148 ~140 ~-55 ~148 ~140 candle[candles=2,lit=true]

# Fenster vorne
fill ~-51 ~129 ~20 ~-49 ~145 ~20 black_stained_glass_pane
fill ~-41 ~129 ~20 ~-39 ~150 ~20 black_stained_glass_pane
fill ~-31 ~129 ~20 ~-29 ~155 ~20 black_stained_glass_pane
fill ~-21 ~129 ~20 ~-19 ~160 ~20 black_stained_glass_pane
fill ~-11 ~129 ~20 ~-9 ~165 ~20 black_stained_glass_pane
fill ~-1 ~155 ~20 ~1 ~170 ~20 black_stained_glass_pane
fill ~11 ~129 ~20 ~9 ~165 ~20 black_stained_glass_pane
fill ~21 ~129 ~20 ~19 ~160 ~20 black_stained_glass_pane
fill ~31 ~129 ~20 ~29 ~155 ~20 black_stained_glass_pane
fill ~41 ~129 ~20 ~39 ~150 ~20 black_stained_glass_pane
fill ~51 ~129 ~20 ~49 ~145 ~20 black_stained_glass_pane

# Fenster hinten
fill ~-51 ~129 ~180 ~-49 ~145 ~180 black_stained_glass_pane
fill ~-41 ~129 ~180 ~-39 ~150 ~180 black_stained_glass_pane
fill ~-31 ~129 ~180 ~-29 ~155 ~180 black_stained_glass_pane
fill ~-21 ~129 ~180 ~-19 ~160 ~180 black_stained_glass_pane
fill ~-11 ~129 ~180 ~-9 ~165 ~180 black_stained_glass_pane
fill ~-1 ~155 ~180 ~1 ~170 ~180 black_stained_glass_pane
fill ~11 ~129 ~180 ~9 ~165 ~180 black_stained_glass_pane
fill ~21 ~129 ~180 ~19 ~160 ~180 black_stained_glass_pane
fill ~31 ~129 ~180 ~29 ~155 ~180 black_stained_glass_pane
fill ~41 ~129 ~180 ~39 ~150 ~180 black_stained_glass_pane
fill ~51 ~129 ~180 ~49 ~145 ~180 black_stained_glass_pane
