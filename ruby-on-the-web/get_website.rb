require 'socket'

host = 'www.google.com'
port = 80
path = "/index.html"

request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host, port)
socket.print(request)
response = socket.read
header, body = response.split("\r\n\r\n", 2)

print body




