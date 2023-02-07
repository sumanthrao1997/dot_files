import glob
import argparse
import os


def delete_nth_file(path, n):
    file_list = glob.glob(path + "/*.pcd")
    if len(file_list) != 0:
        for index, item in enumerate(file_list):
            if index % n == 0:
                os.remove(item)
        print(f"every {n}th pcd file is removed in the path {path}")
        print(
            f"remaining pcd files in the folder is around: {int(len( file_list ) - (len(file_list)/n))}"
        )
    else:
        print(f"No Pcd files found in the path {os.path.abspath(path)}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("path", default=".", help="path to the folder")
    parser.add_argument("--n", default=10, type=int, help="nth file to be deleted")

    args = parser.parse_args()

    delete_nth_file(path=args.path, n=args.n)
