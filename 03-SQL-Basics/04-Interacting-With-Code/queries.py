# pylint: disable=missing-docstring, C0103

import sqlite3

conn = sqlite3.connect('data/movies.sqlite')
conn.row_factory = sqlite3.Row
#db = conn.cursor()

def directors_count(db):
    # return the number of directors contained in the database
    query = '''SELECT count (id) FROM directors'''
    db.execute(query)
    rows = db.fetchone()
    return int(rows[0])



def directors_list(db):
    # return the list of all the directors sorted in alphabetical order
    query = ''' SELECT name  FROM directors ORDER BY name'''
    db.execute(query)
    lista_completa = []
    directores = db.fetchall()
    for director in directores:
        lista_completa.append(director[0])
    return lista_completa
        #return director[0] for row in rows:
        #directores = row['name']
#directors_list(db)


def love_movies(db):
    # return the list of all movies which contain the exact word "love"
    # in their title, sorted in alphabetical order
    query = '''SELECT title
        FROM movies
        WHERE UPPER(title) LIKE '% LOVE %'
        OR UPPER(title) LIKE 'LOVE %'
        OR UPPER(title) LIKE '% LOVE'
        OR UPPER(title) LIKE 'LOVE'
        OR UPPER(title) LIKE '% LOVE''%'
        OR UPPER(title) LIKE '% LOVE.'
        OR UPPER(title) LIKE 'LOVE,%'
        ORDER BY title'''
    db.execute(query)
    rows = db.fetchall()
    loves = []
    for row in rows:
        loves.append(row[0])
    return loves


def directors_named_like_count(db, name):
    # return the number of directors which contain a given word in their name
    query = f'''SELECT count(id) from directors WHERE directors.name LIKE '%{name}%' '''
    db.execute(query)
    rows = db.fetchone()
    return int(rows[0])



def movies_longer_than(db, min_length):
    # return this list of all movies which are longer than a given duration,
    # sorted in the alphabetical order
    query = f'''SELECT * FROM movies WHERE movies.minutes > {min_length} order by movies.title'''
    db.execute(query)
    rows = db.fetchall()
    longers = []
    for row in rows:
        longers.append(row [0])
    return longers
