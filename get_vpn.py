import urllib2
import re
data = urllib2.urlopen('http://www.vpngate.net/api/iphone/')
data = data.readlines()
data = data[2].split(',')
data = data[14].decode('base64')
data = data.replace("\r", '')
data = re.sub(r"(?mi)^#.*|^;.*", '', data)
data = re.sub(r"(?mis)^\n\n+", "\n", data)
print data