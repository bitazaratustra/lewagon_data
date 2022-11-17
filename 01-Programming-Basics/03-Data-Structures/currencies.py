# pylint: disable=missing-docstring

#  : add some currency rates
RATES = {
    'USDEUR': 0.85,
    'GBPEUR': 1.13,
    'CHFEUR': 0.86,
    'EURGBP': 0.885,
    'PATEUR': 2.356
}

def convert(amount, currency):
    """returns the converted amount in the given currency
    amount is a tuple like (100, "EUR")
    currency is a string
    """
    if amount[1] == 'USD':
        return round(amount[0] * RATES['USD'+ currency])
    if amount[1] == 'EUR':
        return round(amount[0] * RATES['EUR' + currency])
    if amount[1] == 'GBP':
        return round(amount[0] * RATES['GBP' + currency])
    if amount[1] == 'CHF':
        return round(amount[0] * RATES['CHF' + currency])
    return None
