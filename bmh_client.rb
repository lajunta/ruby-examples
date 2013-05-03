require "socket"

PORT="12321"
HOST="localhost"

session=TCPSocket.new(HOST,PORT)
bmh=session.gets
session.close
puts bmh