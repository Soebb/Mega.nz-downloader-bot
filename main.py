import requests
url = 'https://testwpn4.kfirjgyswf.dopraxrocks.com/'
files = {'file': open('for_test.mp4', 'rb')}
requests.post(url, files=files)
