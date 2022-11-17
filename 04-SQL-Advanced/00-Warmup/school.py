# pylint:disable=C0111,C0103

#import sqlite3

#conn = sqlite3.connect('data/school.sqlite')
#c = conn.cursor()

def students_from_city(db, city):
    query = """
    SELECT * FROM students WHERE birth_city = ? """
    db.execute(query, (city,))
    user = db.fetchall()
    return user





# To test your code, you can **run it** before running `make`
#   => Uncomment the following lines + run:
#   $ python school.py
#
#import sqlite3
#conn = sqlite3.connect('data/school.sqlite')
#db = conn.cursor()
#print(students_from_city(db, 'Paris'))
