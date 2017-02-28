k= [1,2,3].each {|x| x*2 }
print k
k= [1,2,3].map {|x| x*2 }
print k

def callback
  yield
  yield
end

def callback2(&b)
  b.call
end


proc = Proc.new{ puts "prok" }
callback { puts "hello" }
callback2(&proc)
