#!/usr/bin/env python

import socket
import sys

def usage():
    print 'Usage: {} <port>'.format(sys.argv[0])
    sys.exit(1)

if len(sys.argv) != 2:
    usage()

try:
    server_address = ('', int(sys.argv[1]))
except ValueError:
    usage()

backlog = 0
size = 1024

# Set up the socket and bind to the port, then listen for clients
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(server_address)
s.listen(backlog)

# Keep listening, establish a connection, 
# send 'pong' if you get a 'ping'
try:
    while True:
        client, address = s.accept()
        data = client.recv(size)
        print 'Received: "{}"'.format(data)
        if data == 'ping':
            client.send('pong')
        client.close()
except KeyboardInterrupt:
    s.close()
    print 'Goodbye!'
