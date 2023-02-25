arr = [0,1,2,3,4]

print "Length of an Array: ", arr.length

print "\nFirst Element of an Array: " , arr.first

print "\nLast Element Of an Array: ",arr.last

print "\nTake n elements from starting : ",arr.take(2)

print "\nReturns Elements after n elements : ",arr.drop(2)

print "\nAccess Elements from index : ",arr[2]

print "\nRemoves Last Element Permanently : ",arr.pop

print "\nRemoves First Element Permanently and returns it : ",arr.shift

print "\nAdd an Element at Last to an array : ",arr.push(99)

print "\nAnother Way of Adding element : ",arr << 56

print "\nAdd the Element at the beginning : ",arr.unshift(1)

print "\nDelete particular element if present : ",arr.delete(99)

print "\nDelete element from particular index : ",arr.delete_at(0)

print "\nReturns the reverse array but doesnot change original one : ",arr.reverse

print "\nOriginal Array is: ",arr

print "\nPermanently Reverse the Array : ",arr.reverse!

print "\nOriginal Array is: ",arr

print "\nSelect elements from array based on condition:", arr.select{|number| number%2==0}

print "\nOriginal Array is: ",arr

print "\nCheck whether element presents or not : ",arr.include?(3)

arr1 = [1,2,[3,4,5],[6,7,[8,9,[10,[1,5]]]]]
print "\nTakes Multiple arrays inside one array like 2-d or 3d and convert it into 1-d array : ",arr1.flatten

print "\nJoins al the element by the parameter provided : ",arr.join('*')

print "\nIterate over array and perform actions : "
arr.each {|e| print (e*2).to_s + " "}

arr1 = arr.map! { |e| e*2}

print "\n : ",arr


