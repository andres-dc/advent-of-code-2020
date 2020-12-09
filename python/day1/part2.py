# https://adventofcode.com/2020/day/1

import os

file = open(os.getcwd() + '/input', 'r').read().splitlines()
file = list(map(int, file))

for i, num1 in enumerate(file):
    temp_arr1 = file[i + 1:-1]

    for j, num2 in enumerate(temp_arr1):
        temp_arr2 = temp_arr1[j + 1:-1]

        for num3 in temp_arr2:
            if num1 + num2 + num3 == 2020:
                print(num1 * num2 * num3)

# 246191688
