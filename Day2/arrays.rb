# Array
# the puts method outputs one element per line, while print actually outputs brackets and a list of items.

items = ["Apple","Bananna","Mango"]

# -ve index start from back
print items," ",items[-2]

# can contains elements of different data types
arr = [5,"Dave",15.88,'a',true]

print arr

# add element at last
arr<<8

arr.push(10)

# at desired location
arr.insert(2,false)
puts ""
print arr

# remove element from last
arr.pop

# at certain index
arr.delete_at(1)

puts ""
print arr

# Array Ranges
# access array using ranges
print arr[0..3]
print arr[0...3]

newArr = arr[0..1]
print newArr

# add 2 arrays
res = arr +newArr
puts ""
print res

# subtract elements
res = arr-newArr
puts ""
print res

# duplicate elements
puts ""
print res*2

# Boolean Operations
a = [2,3,7,8]
b = [2,3,9]

print "\nBoolean Operations:\n"
# The & operator returns a new array containing the elements common to the two arrays, with no duplicates.
print a&b

# The | operator returns a new array by joining the arrays and removing duplicates.
print a|b

# Reverse Elements
puts ""
b = a.reverse
print b
print a
print a.reverse
print a

puts ""
# reverse original array values also or in-place
b = a.reverse!
print b
print a
# If you use the reverse method without (!) and don’t save it to a new variable, it will just reverse it once and keep the original value.

# Methods
# ! is used to make change in original array else we have to save the changes in another array
arr = [1,22,45,71,42,15,89,65,1,23,57,10,1,2,45]
puts "\nMethods:"
puts "Array Size: #{arr.size}"
puts "Array Length: #{arr.length}"
print arr
b = arr.sort!
print "\n",b
print "\n",arr

b = arr.uniq!
print "\n",b
print "\n",arr 

print "\n",arr.min
print "\n",arr.max

arr[1] = 23
print "\n",arr

arr.freeze
# arr[1] = 2  unable to modify
print "\n",arr

b = arr.include?(23)
print "\n",b

# Iterate array
for i in arr
    print "#{i} "
end

i=0
while i<arr.length do
    print " #{arr[i]}"
    i+=1
end


# Best way to print array
puts "#{arr}"

# Methods to create array
# Array.[](...) [or] Array[...] [or] [...]
# creating array using new keyword
array = Array.new
puts "#{array}"
# puts array[25] shows blank as no element is their

# set the size
array = Array.new(20)
puts "#{array}"
# puts arra[25] shows error

# passing default value
array = Array.new(4,"name")
puts "#{array}"

# block to evaluate element
# doesnot sets the size
array = Array.new(10) { |e| e = e*2}
puts "#{array}"
# puts array[25] display space

# one more way to create array
# It doesnot set the size
array = Array.[](1,2,3,4,5)
puts "#{array}"
puts array[10]

array = Array[1,2,3,4,5,6,7,8]
puts "#{array}"

digits = Array(0..9)
puts "#{digits}"

digits = Array('a'..'z')
puts "#{digits}",digits.at(21),digits[21]

# Array Pack Directives
a = ['a','b','c']
n = [ 65 , 66 , 67 ]
# puts a.pack("A3A3A3")
# puts a.pack("A3A3A3")
# puts a.pack("a3a3a3")
# puts n.pack("ccc")



# return an string representation of an object
puts n.inspect