# util/folder_structure_builder.py

import os

def build_part_1():
    # list of folders to make if missing
    folders = [
        '../artifacts',
        '../../dataset'
    ]
    for path in folders:
        os.makedirs(path, exist_ok=True)
    print('folders created or already exist:', folders)

def build_part_2():
    print("not implemented yet")