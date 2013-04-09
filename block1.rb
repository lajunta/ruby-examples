y=6
def hello
   x=5
   yield(x)
end

hello do |x|
  z=2
  puts z+y+x
end
