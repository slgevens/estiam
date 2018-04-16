import requests
import sys

# arg = sys.argv[1]

# URL https://api.github.com/events
def main(args):
	# r = requests.get(arg)
	r = args.get("url")
	json = r.json
	return {"json": json}
	print r.json()

main
# print str(sys.argv)