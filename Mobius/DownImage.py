# coding=utf-8
# import requests
#
# r = requests.post(url, data=data)
# print(r.text)
from urllib import request, parse

# url = "https://system.netsuite.com/pages/customerlogin.jsp?country=US"
url = 'http://127.0.0.1:5000/upload'
data = {'uname': "工号", 'passwd': '密码'}
postdata = parse.urlencode(data)
postdata = postdata.encode('utf-8')

res = request.Request(url, postdata)
html = request.urlopen(res).read()
print(html.decode('utf-8'))
