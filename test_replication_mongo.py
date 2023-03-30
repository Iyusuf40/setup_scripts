#!/usr/bin/python3
# test

from pymongo import MongoClient, ReadPreference
import os
import json
from bson import json_util

server = os.getenv("server")
if server == "secondary":
    rp = "secondary"
else:
    rp = "primary"

client = MongoClient(readPreference=rp)
col = client.myt.myc
col2 = client.mydb.mycol

doc = {
        "name": "mycol",
        "new": True
        }

# res = col2.insert_one(doc)
# print(res.acknowledged)
for x in col2.find():
    print(json_util.dumps(x))
print(client.read_preference)

client.close()
