# pylint: disable=missing-docstring,invalid-name

#  paste the code from Kitt's instructions

from bs4 import BeautifulSoup

soup = BeautifulSoup(("pages/carrot.html"), "html.parser")

for recipe in soup.find_all('p', class_= 'recipe-name'):
    print(recipe.text)
