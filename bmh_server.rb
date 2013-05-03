require "socket"
PORT = 12321
START_NUM = ARGV[0].to_i || 20130001
STOP_NUM = ARGV[1].to_i || 20133000
HOST="localhost"
server=TCPServer.new(PORT)
BMH_POOL=[]
STOP_NUM.downto(START_NUM).each{|bmh| BMH_POOL<<bmh }
while(session=server.accept) 
  session.puts BMH_POOL.pop
  session.close
end