# pylint: disable=missing-module-docstring

import sys
import urllib.parse
import requests

BASE_URL = "https://weather.lewagon.com"


def search_city(query):
    '''Look for a given city. If multiple options are returned, have the user choose between them.
       Return one city (or None)
    '''
    url = f"{BASE_URL}/geo/1.0/direct?q={query}"
    response = requests.get(url).json()
    city = response[0]
    print(f"{city['name']}: ({city['lat']}, {city['lon']})")
    return weather_forecast(city['lat'], city['lon'])
    
def weather_forecast(lat, lon):
    '''Return a 5-day weather forecast for the city, given its latitude and longitude.'''
    url = f'api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={API key}'
    response = requests.get(url).json()
    print()
        
def main():
    '''Ask user for a city and display weather forecast'''
    query = input("City?\n> ")
    city = search_city(query)
    # TODO: Display weather forecast for a given city
    pass  # YOUR CODE HERE

if __name__ == '__main__':
    try:
        while True:
            main()
    except KeyboardInterrupt:
        print('\nGoodbye!')
        sys.exit(0)
