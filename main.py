import requests
url = 'https://file2link7qot.kfirjgyswf.dopraxrocks.com'
files = {'file': open('for_test.mp4', 'rb')}
requests.post(url, files=files)
