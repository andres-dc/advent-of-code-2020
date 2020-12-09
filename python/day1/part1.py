# https://adventofcode.com/2020/day/1

import os

file = open(os.getcwd() + '/input', 'r').read().splitlines()
file = list(map(int, file))

for i, n in enumerate(file):
    temp_arr = file[i + 1:-1]

    for el in temp_arr:
        if n + el == 2020:
            print((n * el))

# 646779
