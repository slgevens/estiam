import requests
import sys

arg = sys.argv[1]

# URL https://api.github.com/events
r = requests.get(arg)
print r.json()

# print str(sys.argv)