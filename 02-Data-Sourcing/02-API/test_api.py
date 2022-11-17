# pylint: disable=missing-docstring,invalid-name

# TODO: paste the code from Kitt's instructions
import requests

query = input('city? =')
url = f"https://weather.lewagon.com/geo/1.0/direct?q={query}"
response = requests.get(url).json()
city = response[0]
print(f"{city['name']}: ({city['lat']}, {city['lon']})")