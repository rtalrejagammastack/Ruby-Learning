# used to create loops
# each iterator

arr = [2,4,6]

# here x is block parameter or variable
arr.each do |x|
    puts x
end
sum = 0
arr.each do |i|
    sum+=i
end
puts sum


# The do and end keywords specify a block of code in Ruby.  
# After the opening of the block, we have the block parameters within pipes ( | | ).
# with hashes
sizes = {svga:800,hd:1366,uhd:3840}

sizes.each do |key,value|
    puts "#{key}=> #{value}"
end

# shortend way
sizes.each { |key,value| puts "#{key}=>#{value}"}

# The each iterator can also be used on ranges.
# For strings, you can use the each_char iterator to iterate over the characters.

ans = "I am Ruby Developer."
ans.each_char {|c| print "#{c}"}

# sum of values in hash
h = {a:8,b:9,c:18}
sum = 0
h.each {|key,val| sum+=val}
puts sum


# 3. times
10.times do
    print "Hii "
end

# shortend
x=8
x/=2
y=1
x.times { y+=2 }
puts y


# Example try
t ={a:1,b:2,c:}