import requests
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry
import requests
import logging
import time
import datetime
from bs4 import BeautifulSoup

url="https://sca.app.neoncrm.com/np/clients/sca/neonPage.jsp?pageId=7"
storage_path="~/dis/public/data/newsletters.json"
rightnow = time.time()
utc = datetime.datetime.utcfromtimestamp(rightnow)
ts = utc.strftime("%Y%m%d-%H%M%S %z")

try:
    import http.client as http_client
except ImportError:
    # Python 2
    import httplib as http_client
#http_client.HTTPConnection.debuglevel = 1

# You must initialize logging, otherwise you'll not see debug output.
#logging.basicConfig()
#logging.getLogger().setLevel(logging.DEBUG)
#requests_log = logging.getLogger("requests.packages.urllib3")
#requests_log.setLevel(logging.DEBUG)
#requests_log.propagate = True

session = requests.Session()
retry = Retry(connect=3, backoff_factor=0.5)
adapter = HTTPAdapter(max_retries=retry)
session.mount('http://', adapter)
session.mount('https://', adapter)


page = session.get(url)


soup = BeautifulSoup(page.content, 'html.parser')

tds=soup.find("div", class_="neoncrm_broadcast_section").find_all("td")

lst=[]
for td in tds:
    vals = td.text.split("\n")
    kingdom=vals[1].strip()
    name=vals[2].strip()
    link=td.find("a")['href']
    lst.append({"kingdom":kingdom,"name":name,"url":link})
    
new_data = {"timestamp":ts,"newsletters":lst}
 
import json
 
f = open(storage_path)
old_data = json.load(f)
f.close()

last_data=old_data[-1]
if last_data['newsletters']!=new_data['newsletters']:
    print("updated information, updating json")
    with open(storage_path, "w") as write_file:
        json.dump(old_data, write_file, indent=4)
