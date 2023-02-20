# Join two arrays without using in-built functions
a = [1,2,3,4]
b = [5,6,7,8]
result = []

a.each {|e| result<<e}
b.each {|e| result<<e}

puts result.inspect