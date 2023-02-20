# pylint: disable=missing-docstring

import os

def start():
    """returns the right message"""
    value = os.getenv('FLASK_ENV')
    if value is None:
        return 'Starting in empty mode...'
    return f'Starting in {value} mode...'


if __name__ == "__main__":
    print(start())
