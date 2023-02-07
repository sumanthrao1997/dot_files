#!/usr/bin/env python3
import open3d as o3d
import numpy as np
import sys

def num_of_points(filename):
    pcd = o3d.io.read_point_cloud(filename)
    print(f"The lenght of pointcloud at {filename} is: ")
    print('\033[1m' + str(np.shape(np.asarray(pcd.points))) + '\033[0m')
if __name__ == "__main__":
    if len(sys.argv) == 2:
        filename = sys.argv[1]
        num_of_points(filename)
        sys.exit()
    else: print("more than one filename")
    sys.exit()