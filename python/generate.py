import os
import random

dpPath = "data/rafidp/"
if not os.path.exists(dpPath):
    os.makedirs(dpPath + "function")


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
            print(str(self))
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
            print(str(self))
            print('-' * w + '\n')
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



l = Laby3d(7,7,7)
print(str(l))
with open(dpPath + "function/labyrinth7x7x7.mcfunction", "w") as file:
    file.writelines(l.getMcFunction())

with open(dpPath + "function/labyrinth7x7x7.txt", "w") as file:
    file.writelines(str(l))

