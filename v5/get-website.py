import requests
import sys

arg = sys.argv[1]

# URL https://api.github.com/events
def api(arg):
	r = requests.get(arg)
	json = r.json
	return {"json": json}
# print r.json()

# print str(sys.argv)