# pylint: disable=missing-module-docstring,missing-function-docstring,eval-used
import sys


def main():
    """Implement the calculator"""
    if sys.argv[2] == '+':
        return int(sys.argv[1]) + int(sys.argv[3])
    if sys.argv[2] == '-':
        return int(sys.argv[1]) - int(sys.argv[3])
    if sys.argv[2] == '*':
        return int(sys.argv[1]) * int(sys.argv[3])
    if sys.argv[2] == '/':
        return int(sys.argv[1]) / int(sys.argv[3])


if __name__ == "__main__":
    print(main())
