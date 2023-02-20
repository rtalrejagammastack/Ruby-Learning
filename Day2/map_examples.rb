arr = [ 1,2,3,4,5,6]

# Map returns a new array with the results and doesnot change the original array
arr = arr.map {|ele| ele*2}

puts arr.inspect

# changes the original array also
# map! using this in-place 

# Converting string to uppercase
string = ["a","b","c"]
string.map! {|str| str.upcase}

puts string.inspect

# converting strings to integer
array = ["11","12","13"]
array.map! {|str| str.to_i}
puts array.inspect