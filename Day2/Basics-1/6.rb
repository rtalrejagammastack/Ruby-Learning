# Map function to double all the elements in array and handle edge cases like array contains characters as well

arr = [1,2,3,4,'c',"abc"]
arr.map! {|e| e*2}
puts arr.inspect