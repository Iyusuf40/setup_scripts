#!/bin/python3

import re
import sys

if len(sys.argv) < 2:
    raise Exception("file name not passed")

file = sys.argv[1]

f = open(file, "r")

fileContent = f.read()

# content = fileContent.replace("\n", " ").replace("=", " ").replace("  ", " ")
rgx = r"\n|=|\r|\t|[ \t]{2,}"
rgx2 = r"[ ]{2,}"
content = re.sub(rgx, " ", fileContent)
content = re.sub(rgx2, " ", content)

splt = content.split(" ")

sum_ = 0

for word in splt:
    try:
        val = int(word)
        sum_ += val
    except:
        continue

print(sum_)
