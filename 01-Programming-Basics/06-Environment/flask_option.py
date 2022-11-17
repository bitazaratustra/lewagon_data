# pylint: disable=missing-docstring

import os

def start():
    """returns the right message"""
    value = os.getenv('FLASK_ENV', default = 'empty')
    return f'Starting in {value} mode...'

if __name__ == "__main__":
    print(start())
