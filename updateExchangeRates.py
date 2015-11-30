"""
update exchange rates, needs to be run manually
"""
import pymongo
import requests

url = "http://api.fixer.io/latest"
params = {"base": "EUR"}

rates = requests.get(url, params)
rates = rates.json()

if not rates:
    pass
else:
    db = pymongo.MongoClient()['db']
    for rate in rates['rates']:
        db['exchangerates'].update(
            {"_id": rate},
            {"_id": rate, "rate": rates['rates'][rate]},
            upsert=True)
    print(list(db['exchangerates'].find()))

