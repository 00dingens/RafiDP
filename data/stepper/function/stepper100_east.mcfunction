tellraw @s [{"text":"Erstelle Zielblock im Osten (+x)","color":"gray"}]
execute positioned ~98 ~ ~ run execute positioned over motion_blocking run function stepper:stepper100
execute as @n positioned ~98 ~ ~ run execute positioned over motion_blocking run teleport @s ~ ~ ~
