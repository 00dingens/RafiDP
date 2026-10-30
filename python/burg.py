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
  file.writelines(f'\n#fackeln in seitenwänden\n')
  for i in range(25,186,10):
    file.writelines(f'setblock ~70 ~1 ~{i} torch\n')
    file.writelines(f'setblock ~-70 ~1 ~{i} torch\n')
  file.writelines(f'\n#fackeln in vorder und rückwänden\n')
  for i in range(-65,66,10):
    file.writelines(f'setblock ~{i} ~1 ~{190} torch\n')
    file.writelines(f'setblock ~{i} ~1 ~{17} torch\n')
  file.writelines(f'\n#fackeln im Burginneren (unten, innerer boden)\n')
  for x in range(-55,56,10):
    for z in range(25, 176, 10):
      file.writelines(f'setblock ~{x} ~1 ~{z} torch\n')
      file.writelines(f'setblock ~{x} ~21 ~{z} torch\n')