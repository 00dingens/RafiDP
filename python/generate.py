import os
import random
from math import *

dpPath = "data/rafidp/"
if not os.path.exists(dpPath):
    os.makedirs(dpPath + "function")

debugLaby = False

class Laby2d:
    def __init__(self, w, h):
        self.w = w
        self.h = h
        self.arr = [[0 for i in range(h)] for j in range(w)]
        # for debug
        # self.arr = [[3, 3, 1, 2], [3, 3, 1, 2], [2, 2, 0, 2], [1, 1, 1, 0]]
        self.arr[h//2][w//2] = 1
        todo = [(i,j) for i in range(w) for j in range(h)]
        done = []
        while len(todo) > 0:
            notDone = []
            random.shuffle(todo)
            for (x, y) in todo:
                # print(f'pos {x},{y}')
                if self.number(x, y) > 0:
                    # field is done, should not happen
                    done.append((x,y))
                    # print('done earlier')
                    continue
                neighbours = [
                    (x+i,y+j, here, there)
                    for (i,j, here, there) in [(1,0, 1,0), (0,1, 2,0), (-1,0, 0,1), (0,-1, 0,2)]
                    if self.number(x+i, y+j) > 0
                ]
                if len(neighbours) == 0:
                    # no neighbour is done
                    notDone.append((x,y))
                    # print('not done')
                    continue
                random.shuffle(neighbours)
                # print(neighbours)
                neighbour = neighbours[0]
                # print(neighbour)
                self.arr[y][x] |= neighbour[2]
                self.arr[neighbour[1]][neighbour[0]] |= neighbour[3]
                # print(str(la))
                # print('done')
                done.append((x,y))
            todo = notDone
            # print('todo' + str(todo))
            # print('done' + str(done))
            if debugLaby:
                print(str(self))
        if debugLaby:
            print(self.numbers())
            print(str(self))



    def number(self, x, y):
        if x < 0 or x > self.w - 1 or y < 0 or y > self.h - 1:
            return 0
        return ( (1 if x < self.w-1 and self.arr[y][x] & 1 == 1 else 0)
                 + (2 if y < self.h-1 and self.arr[y][x] & 2 == 2 else 0)
                 + (4 if x > 0 and self.arr[y][x-1] & 1 == 1 else 0)
                 + (8 if y > 0 and self.arr[y-1][x] & 2 == 2 else 0)
                 )

    def __str__(self):
        p = ' ╶╷┌╴─┐┬╵└│├┘┴┤┼'
        result = ''
        for j in range(self.h):
            for i in range(self.w):
                result += p[self.number(i, j)]
            result += '\n'
        return result

    def numbers(self):
        return (
                '\n'.join([' '.join(map(str, line)) for line in self.arr])
                + '\n')

    def getMcFunction(self, paths='air', walls='stone', dpath=2, dwall=1):
        dboth = dwall + dpath
        result = f'tellraw @s "Du brauchst vorher"\ntellraw @s "/fill ~ ~-3 ~ ~{self.w * dboth + dwall - 1} ~-1 ~{self.h * dboth + dwall - 1} {walls}"'
        # horizontal
        for j in range(self.h):
            start = -1
            jj = j * dboth + dwall
            for i in range(self.w):
                if self.arr[j][i] & 1 == 1 and start < 0:
                    start = i
                if self.arr[j][i] & 1 == 0 and start >= 0:
                    result += f'\nfill ~{start * dboth + dwall} ~-2 ~{jj} ~{(i + 1) * dboth - 1} ~-1 ~{jj + dpath - 1} {paths}'
                    start = -1
        # vertical
        for i in range(self.w):
            ii = i * dboth + dwall
            start = -1
            for j in range(self.h):
                if self.arr[j][i] & 2 == 2 and start < 0:
                    start = j
                if self.arr[j][i] & 2 == 0 and start >= 0:
                    result += f'\nfill ~{ii} ~-2 ~{start * dboth + dwall} ~{ii + dpath - 1} ~-1 ~{(j + 1) * dboth - 1} {paths}'
                    start = -1
        result = result.replace('~0 ', '~ ')
        result += f'\ntellraw @s "2D Labyrinth {self.w}x{self.h} erzeugt, Wände {dwall}, Gänge {dpath}."'
        return result

l = Laby2d(13,13)
with open(dpPath + "function/labyrinth13x13.mcfunction", "w") as file:
    file.writelines(l.getMcFunction())

with open(dpPath + "function/labyrinth13x13.txt", "w") as file:
    file.writelines(str(l))



class Laby3d:
    def __init__(self, w, h, l):
        self.w = w
        self.h = h
        self.l = l
        self.arr = [[[0 for x in range(w)] for y in range(h)] for z in range(l)]
        self.arr[l//2][h//2][w//2] = 1
        todo = [(x, y, z) for x in range(w) for y in range(h) for z in range(l)]
        done = []
        while len(todo) > 0:
            notDone = []
            random.shuffle(todo)
            for (x, y, z) in todo:
                # print(f'pos {x},{y}')
                if self.number(x, y, z) > 0:
                    # field is done, should not happen
                    done.append((x, y, z))
                    # print('done earlier')
                    continue
                neighbours = [
                    (x+i, y+j, z+k, here, there)
                    for (i,j,k, here, there) in [
                        (1,0,0, 1,0), (0,1,0, 2,0), (0,0,1, 4,0),
                        (-1,0,0, 0,1), (0,-1,0, 0,2), (0,0,-1, 0,4)]
                    if self.number(x+i, y+j, z+k) > 0
                ]
                if len(neighbours) == 0:
                    # no neighbour is done
                    notDone.append((x, y, z))
                    # print('not done')
                    continue
                random.shuffle(neighbours)
                # print(neighbours)
                neighbour = neighbours[0]
                # print(neighbour)
                self.arr[z][y][x] |= neighbour[3]
                self.arr[neighbour[2]][neighbour[1]][neighbour[0]] |= neighbour[4]
                # print(str(la))
                # print('done')
                done.append((x, y, z))
            todo = notDone
            if debugLaby:
                print(str(self))
                print('-' * w + '\n')
        if debugLaby:
            print(self.numbers())
            print(str(self))



    def number(self, x, y, z):
        if x < 0 or x > self.w - 1 or y < 0 or y > self.h - 1 or z < 0 or z > self.l - 1:
            return 0
        return ( (1 if x < self.w-1 and self.arr[z][y][x] & 1 == 1 else 0)
                 + (2 if y < self.h-1 and self.arr[z][y][x] & 2 == 2 else 0)
                 + (4 if z < self.l-1 and self.arr[z][y][x] & 4 == 4 else 0)
                 + ( 8 if x > 0 and self.arr[z][y][x-1] & 1 == 1 else 0)
                 + (16 if y > 0 and self.arr[z][y-1][x] & 2 == 2 else 0)
                 + (32 if z > 0 and self.arr[z-1][y][x] & 4 == 4 else 0)
                 )

    def __str__(self):
        p = ' ╶╷┌╴─┐┬╵└│├┘┴┤┼'
        result = ''
        for k in range(self.l):
            for j in range(self.h):
                for i in range(self.w):
                    n = self.number(i, j, k)
                    result += p[(n & 3) | (n >> 1) & 12].replace(' ', '*' if n > 0 else ' ')
                result += '\n'
            result += '\n\n'
        return result

    def numbers(self):
        return (
                '\n\n'.join(
                    ['\n'.join(
                        [' '.join(map(str, line)) for line in layer]
                    ) for layer in self.arr]
                )
                + '\n')

    def getMcFunction(self, paths='air', walls='stone', dpath=2, dwall=1):
        dboth = dwall + dpath
        result = f'tellraw @s "Du brauchst vorher"\ntellraw @s "/fill ~ ~-1 ~ ~{self.w * dboth + dwall - 1} ~{-(self.h * dboth + dwall)} ~{self.l * dboth + dwall - 1} {walls}"'
        # x direction
        for k in range(self.l):
            kk = k * dboth + dwall
            for j in range(self.h):
                start = -1
                jj = j * dboth + dwall
                for i in range(self.w):
                    if self.arr[k][j][i] & 1 == 1 and start < 0:
                        start = i
                    if self.arr[k][j][i] & 1 == 0 and start >= 0:
                        result += f'\nfill ~{start * dboth + dwall} ~{-jj-1} ~{kk} ~{(i + 1) * dboth - 1} ~{-(jj + dpath)} ~{kk + dpath - 1} {paths}'
                        start = -1
        # y direction
        for k in range(self.l):
            kk = k * dboth + dwall
            for i in range(self.w):
                ii = i * dboth + dwall
                start = -1
                for j in range(self.h):
                    if self.arr[k][j][i] & 2 == 2 and start < 0:
                        start = j
                    if self.arr[k][j][i] & 2 == 0 and start >= 0:
                        result += f'\nfill ~{ii} ~{-(start * dboth + dwall) - 1} ~{kk} ~{ii + dpath - 1} ~{-((j + 1) * dboth)} ~{kk + dpath - 1} {paths}'
                        start = -1
        # z direction
        for j in range(self.h):
            jj = j * dboth + dwall
            for i in range(self.w):
                ii = i * dboth + dwall
                start = -1
                for k in range(self.l):
                    if self.arr[k][j][i] & 4 == 4 and start < 0:
                        start = k
                    if self.arr[k][j][i] & 4 == 0 and start >= 0:
                        result += f'\nfill ~{ii} ~{-jj - 1} ~{start * dboth + dwall} ~{ii + dpath - 1} ~{-(jj + dpath)} ~{(k + 1) * dboth - 1} {paths}'
                        start = -1
        result = result.replace('~0 ', '~ ')
        result += f'\ntellraw @s "2D Labyrinth {self.w}x{self.h}x{self.l} erzeugt, Wände {dwall}, Gänge {dpath}."'
        return result

def bridge(direction='x'):
    length = 30 # will be doubled
    width = 3   # will be doubled
    height = 20 # Maximal height at the ends
    material = 'stone_bricks'
    result = f'tellraw @s "Brücke mit Länge {length * 2 + 1}, Breite {width * 2 + 1}, Höhe {height} aus {material} in Richtung {direction} erzeugt."'
    curve = [height*x*x/length/length + 1 for x in range(length+1)]
    coords = [(i, int(curve[i]), int(curve[i+1])) for i in range(len(curve)-1)]
    match direction:
        case 'x':
            result += f'\nfill ~-{length} ~{-1} ~-{width} ~{length} ~{-1} ~{width} {material}'
            result += f'\nfill ~-{length} ~{0} ~-{width} ~{length} ~{0} ~-{width} {material}'
            result += f'\nfill ~-{length} ~{0} ~{width} ~{length} ~{0} ~{width} {material}'
            for (x, y1, y2) in coords:
                result += f'\nfill ~-{x} ~-{y1} ~-{width} ~-{x+1} ~-{y2} ~-{width-1} {material}'
                result += f'\nfill ~-{x} ~-{y1} ~{width} ~-{x+1} ~-{y2} ~{width-1} {material}'
                result += f'\nfill ~{x} ~-{y1} ~-{width} ~{x+1} ~-{y2} ~-{width-1} {material}'
                result += f'\nfill ~{x} ~-{y1} ~{width} ~{x+1} ~-{y2} ~{width-1} {material}'
        case 'y':
            result += f'\nfill ~-{width} ~{-1} ~-{length} ~{width} ~{-1} ~{length} {material}'
            result += f'\nfill ~-{width} ~{0} ~-{length} ~-{width} ~{0} ~{length} {material}'
            result += f'\nfill ~{width} ~{0} ~-{length} ~{width} ~{0} ~{length} {material}'
            for (x, y1, y2) in coords:
                result += f'\nfill ~-{width} ~-{y1} ~-{x} ~-{width-1} ~-{y2} ~-{x+1} {material}'
                result += f'\nfill ~{width} ~-{y1} ~-{x} ~{width-1} ~-{y2} ~-{x+1} {material}'
                result += f'\nfill ~-{width} ~-{y1} ~{x} ~-{width-1} ~-{y2} ~{x+1} {material}'
                result += f'\nfill ~{width} ~-{y1} ~{x} ~{width-1} ~-{y2} ~{x+1} {material}'
        case _:
            pass
    result += f'\nsetblock ~ ~-1 ~ mossy_stone_bricks'
    result = result.replace('~0 ', '~ ')
    result = result.replace('~-0 ', '~ ')
    return result + '\n'

def circleCoordinates(r):
    c = [0] * r
    for i in range(100):
        c[int(sin(i*pi/400)*r)] = int(cos(i*pi/400) * r)
    c = list(filter(lambda x: x > 0, c))
    c = list(zip(range(len(c)),c))
    return c

def circle(r):
    result = f'tellraw @s "Kreis mit Radius {r}"'
    cc = circleCoordinates(r)
    signs = [('',''),('-',''),('','-'),('-','-')]
    for x, z in cc:
        for sx, sz in signs:
            result += f'\nsetblock ~{sx}{x} ~ ~{sz}{z} white_wool'
            result += f'\nsetblock ~{sz}{z} ~ ~{sx}{x} white_wool'
    result = result.replace('~0 ', '~ ')
    result = result.replace('~-0 ', '~ ')
    return result

def sphereCoordinates(r):
    c = [[0] * (r+1) for i in range(r+1)]
    for i in range(100):
        for j in range(100):
            w1 = i*pi/200
            w2 = j*pi/300
            x = int(cos(w1)*sin(w2)*r)
            y = int(sin(w1)*sin(w2)*r)
            z = int(cos(w2)*r)
            #print(f' {w1} {w2}  ({x},{y},{z})')
            c[x][y] = max(c[x][y], z)
    #for l in c:
    #    print(l)
    c = list(map(lambda l: list(filter(lambda x: x > 0, l)), c))
    return c

def sphere(r):
    result = f'tellraw @s "Kugel mit Radius {r}"'
    cc = sphereCoordinates(r)
    s = ['', '-']
    signs = [(x,y,z) for x in s for y in s for z in s]
    axes = [[0,1,2],[0,2,1],[1,0,2],[1,2,0],[2,0,1],[2,1,0]]
    for x in range(len(cc)):
        for y in range(len(cc[x])):
            z = cc[x][y]
            p = (x,y,z)
            #print(p)
            for sx, sy, sz in signs:
                for a1, a2, a3 in axes:
                    result += f'\nsetblock ~{sx}{p[a1]} ~{sy}{p[a2]} ~{sz}{p[a3]} white_wool'
    result = result.replace('~0 ', '~ ')
    result = result.replace('~-0 ', '~ ')
    return result

def vulkan(r=20, maxH=105): # radius of rim
    result = f'tellraw @s "Vulkan mit Radius {r} und Höhe {maxH}"'
    cx,cy = 4*r, 4*r # center in array
    l = [[0] * (cy*2+1) for i in range(cx*2+1)]
    wCount = 1 # point for each 2π blocks
    rimRand = 3 # random shift of rim points
    rumpel = 0.15
    ddd = 7 # width of pen
    # fill crater with smooth funnel
    for y in range(-r*2,r*2):
        for x in range(-r*2,r*2):
            #l[cx+x][cy+y] = maxH - abs(int(sqrt(x*x+y*y)-r))
            pass

    # generate rim points rim points
    for (startRadius, startHeight, slope) in [(r, maxH,0.9),(r*1.5, maxH-r*0.5,0.7),(r*2, maxH-r,0.5),(r*2.5, maxH-r*1.4,0.4),(r*3, maxH-r*1.6,0.3)]:
        for w in range(int(wCount*startRadius)):
            wa = w*2*pi/(wCount*startRadius)
            rx = sin(wa)*startRadius + random.random()*rimRand
            ry = cos(wa)*startRadius + random.random()*rimRand
            while abs(rx) < cx-ddd and abs(ry) < cy-ddd:
                wa += random.random()*(2*rumpel) - rumpel
                rx += sin(wa)
                ry += cos(wa)
                h = startHeight - (sqrt(rx*rx+ry*ry)-r)*slope
                for dx in range(-ddd,ddd):
                    for dy in range(-ddd,ddd):
                        dd = sqrt(dx**2+dy**2)
                        l[cx+int(rx+dx)][cy+int(ry+dy)] = max(l[cx+int(rx+dx)][cy+int(ry+dy)], int(h-dd))
                        if dd == 0:
                            pass#l[cx+int(rx+dx)][cy+int(ry+dy)] = int(h-dd + 10)
    #debug output
    for y in range(cy*2+1):
        for x in range(cx*2+1):
            if l[x][y] > 0:
                result += f'\nfill ~{x-cx} ~{l[x][y]} ~{y-cy} ~{x-cx} ~{max(l[x][y]-10,1)} ~{y-cy} stone'
            match l[x][y]:
                case 0:
                    print('?', end='')
                case _ if l[x][y] < 40:
                    print('.', end='')
                case _ if l[x][y] < 50:
                    print('"', end='')
                case _ if l[x][y] < 60:
                    print('*', end='')
                case _ if l[x][y] < 70:
                    print('o', end='')
                case _ if l[x][y] < 80:
                    print('X', end='')
                case _ if l[x][y] < 90:
                    print('%', end='')
                case _ if l[x][y] >= 90:
                    print('#', end='')
                case _:
                    print(' ', end='')
        print('')
    return result


l = Laby3d(7,7,7)
if debugLaby:
    print(str(l))
with open(dpPath + "function/labyrinth7x7x7.mcfunction", "w") as file:
    file.writelines(l.getMcFunction())

with open(dpPath + "function/labyrinth7x7x7.txt", "w") as file:
    file.writelines(str(l))


with open(dpPath + "function/bridgex.mcfunction", "w") as file:
    file.writelines(bridge('x'))

with open(dpPath + "function/bridgey.mcfunction", "w") as file:
    file.writelines(bridge('y'))

for r in [4,5,6,7,8,10,12,15,20,25,30,35,40,45,50,60,70,80,90,100]:
    with open(dpPath + f'function/circle{r}.mcfunction', "w") as file:
        file.writelines(circle(r))

for r in [5,7,10,12,15,20,25,30,35,40,45,50]:
    with open(dpPath + f'function/ball{r}.mcfunction', "w") as file:
        file.writelines(sphere(r))

with open(dpPath + "function/vulkan20.mcfunction", "w") as file:
    print(len(vulkan(20,105)))
    file.writelines(vulkan(20,105))
