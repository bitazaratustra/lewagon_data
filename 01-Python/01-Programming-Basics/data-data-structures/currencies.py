# pylint: disable=missing-docstring


RATES = {'USDEUR': 0.85,
'GBPEUR': 1.13,
'CHFEUR': 0.86,
'EURGBP': 0.885,
'PEAEUR': 0.056
}

def convert(amount, currency):
    """returns the converted amount in the given currency
    amount is a tuple like (100, "EUR")
    currency is a string
    """
    if currency == 'EUR' and amount[1] == 'USD':
        return round(amount[0] * 0.85,1)
    if currency == 'EUR' and amount[1] == 'GBP':
        return round(amount[0] * 1.13)
    if currency == 'EUR' and amount[1] == 'CHF':
        return round(amount[0] * 0.86)
    if currency == 'GBP' and amount[1] == 'EUR':
        return round(amount[0]* 0.885)
    return None
