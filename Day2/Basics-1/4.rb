# Join 2 arrays using in-build functions

a = [1,2,3,4]
b = [5,6,7,8]

#Method 1 
result = []
result.concat(a).concat(b)
puts result.inspect

# Method 2
result1 = a + b

puts result1.inspect