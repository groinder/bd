from random import randrange, getrandbits, choice
from datetime import timedelta, datetime


def random_date(start, end):
    """
    This function will return a random datetime between two datetime
    objects.
    """
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)


date_format = '%Y-%m-%d'
d1 = datetime.strptime('2010-01-01', date_format)
d2 = datetime.strptime('2019-01-01', date_format)
pseudos = [
    'TYGRYS',
    'LOLA',
    'BOLEK',
    'ZOMBI',
    'LYSY',
    'MALA',
    'RAFA'
]

with open('konto.txt', 'w') as f:
    for i in range(1, 20):
        data_wprowadzenia = random_date(d1, d2)
        data_wprowadzenia_str = "'" + data_wprowadzenia.strftime(date_format) + "'"
        data_usuniecia = "'" + random_date(data_wprowadzenia, d2).strftime(date_format) + "'" if getrandbits(1) else 'NULL'
        insert = "insert into KONTO select MYSZ_TYP({}, {}, {}, ref(e)) from elita e where e.pseudo = '{}';"
        f.write(insert.format(i, data_wprowadzenia_str, data_usuniecia, choice(pseudos)) + "\n")
