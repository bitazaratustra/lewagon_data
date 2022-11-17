# pylint: disable=missing-docstring


def sudoku_validator(grid):
    for i in grid:
        if len(set(i)) != 9:
            return False
    columna = list(zip(grid[0],grid[1], grid[2], grid[3], grid[4], grid[5], grid[6], grid[7], grid[8]))
    for celda in columna:
        if len(set(celda)) != 9:
            return False
    cas1 = []
    cas2 = []
    cas3 = []
    for fila in grid:
        cas1.append(fila[:3])
        cas2.append(fila[3:6])
        cas3.append(fila[6:])
    if sum(cas1[0]) + sum(cas1[1]) + sum(cas1[2]) != 45:
        return False
    if sum(cas1[3]) + sum(cas1[4]) + sum(cas1[5]) != 45:
        return False
    if sum(cas1[6]) + sum(cas1[7]) + sum(cas1[8]) != 45:
        return False
    if sum(cas2[0]) + sum(cas2[1]) + sum(cas2[2]) != 45:
        return False
    if sum(cas2[3]) + sum(cas2[4]) + sum(cas2[5]) != 45:
        return False
    if sum(cas2[6]) + sum(cas2[7]) + sum(cas2[8]) != 45:
        return False
    if sum(cas3[0]) + sum(cas3[1]) + sum(cas3[2]) != 45:
        return False
    if sum(cas3[3]) + sum(cas3[4]) + sum(cas3[5]) != 45:
        return False
    if sum(cas3[6]) + sum(cas3[7]) + sum(cas3[8]) != 45:
        return False
    return True
