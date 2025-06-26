tellraw @s [{"text":"Erstelle Zielblock im Norden (-z)","color":"gray"}]
execute positioned ~ ~ ~-98 run execute positioned over motion_blocking run function rafidp:stepper100
execute as @p positioned ~ ~ ~-98 run execute positioned over motion_blocking run teleport @s ~ ~ ~
