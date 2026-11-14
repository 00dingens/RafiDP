import os
import random
from math import *

dpPath = "data/burg/function/"
if not os.path.exists(dpPath):
  os.makedirs(dpPath)

#result = ''
#result += f'\nsetblock ~{sx}{p[a1]} ~{sy}{p[a2]} ~{sz}{p[a3]} white_wool'
#result = result.replace('~0 ', '~ ')
#result = result.replace('~-0 ', '~ ')

print('Fackeln')
with open(dpPath + f'fackeln.mcfunction', "w") as file:
  #file.writelines(f'\n#fackeln in seitenwänden\n')
  #for i in range(25,186,10):
  #  file.writelines(f'setblock ~70 ~1 ~{i} torch\n')
  #  file.writelines(f'setblock ~-70 ~1 ~{i} torch\n')
  #file.writelines(f'\n#fackeln in vorder und rückwänden\n')
  #for i in range(-65,66,10):
  #  file.writelines(f'setblock ~{i} ~1 ~{190} torch\n')
  #  file.writelines(f'setblock ~{i} ~1 ~{17} torch\n')
  file.writelines(f'\n#fackeln im Burginneren (unten, rundgang, innerer boden, thron-raum)\n')
  #for x in range(-55,56,10):
  #  for z in range(25, 176, 10):
  for x in range(-75,76,10):
    for z in range(15, 196, 10):
      file.writelines(f'setblock ~{x} ~1 ~{z} torch\n')
      file.writelines(f'setblock ~{x} ~122 ~{z} torch\n')
      if abs(x) + z > 30 and abs(x)<60 and 20 < z < 180:
        file.writelines(f'setblock ~{x} ~21 ~{z} torch\n')
      if abs(x)<40 and 150 < z < 170:
        file.writelines(f'setblock ~{x} ~41 ~{z} torch\n')
  file.writelines(f'\n#Laternen hinter dem Thron-Raum (Im Gang, unterm Gang)\n')
  for x in range(2,33,10):
    for y in range(43, 74, 10):
      file.writelines(f'setblock ~{x} ~{y} ~{177} lantern[hanging=true]\n')
      file.writelines(f'setblock ~{-x} ~{y} ~{177} lantern[hanging=true]\n')
      file.writelines(f'setblock ~{x} ~{y-4} ~{177} lantern[hanging=true]\n')
      file.writelines(f'setblock ~{-x} ~{y-4} ~{177} lantern[hanging=true]\n')

print('Dach')
with open(dpPath + f'dach.mcfunction', "w") as file:
  file.writelines('''fill ~ ~180 ~18 ~ ~180 ~182 polished_blackstone_bricks
fill ~ ~179 ~20 ~ ~149 ~20 deepslate
fill ~ ~179 ~180 ~ ~149 ~180 deepslate\n''')
  for i in range(1, 66, 2):
    file.writelines(f'''fill ~{i} ~{180 - i // 2} ~18 ~{i} ~{180 - i // 2} ~182 polished_blackstone_brick_slab[type=bottom]
fill ~{i} ~{179 - i // 2} ~18 ~{i} ~{179 - i // 2} ~182 polished_blackstone_brick_slab[type=top]
fill ~{i+1} ~{179 - i // 2} ~18 ~{i+1} ~{179 - i // 2} ~182 polished_blackstone_bricks\n''')
    file.writelines(f'''fill ~{-i} ~{180 - i // 2} ~18 ~{-i} ~{180 - i // 2} ~182 polished_blackstone_brick_slab[type=bottom]
fill ~{-i} ~{179 - i // 2} ~18 ~{-i} ~{179 - i // 2} ~182 polished_blackstone_brick_slab[type=top]
fill ~{-i-1} ~{179 - i // 2} ~18 ~{-i-1} ~{179 - i // 2} ~182 polished_blackstone_bricks\n''')
    if i < 60:
      file.writelines(f'''fill ~{-i} ~{179 - i // 2} ~20 ~{i} ~149 ~20 deepslate
fill ~{-i} ~{179 - i // 2} ~180 ~{i} ~149 ~180 deepslate\n''')
