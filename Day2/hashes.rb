# Hashes represent key =>value pairs
# A hash is created with comma seperated keys and values inside curly brackets

ages = {
    "David"=>28,
    "Army"=>19,
    "Rob"=>42
}
puts ages
puts ages["Rob"]

# Compared with arrays, hashes have one significant advantage: they can use any object as an index, even an array. 
month = { 
    [1..31,'jan']=>"January",
    [1..28,'feb']=>"Febuary"
}
puts month[[1..31,'jan']]


# Symbols
# Ruby has a more elegant and faster way for creating and accessing hash indexes than using strings.
# Symbols are similar to strings, but they are immutable, meaning that they cannot be changed.
# a = :id
h = {
    :name=>"Dave",
    :age=>28,
    :gender=>'M'
}
puts h
puts h[:name]
# symbols are used as keys for our hash.
h = {
    name:"Dave",
    age:28,
    gender:'M'
}
puts h
puts h[:name]

# Methods
# 1. delete key
h.delete(:age)
puts h

# 2. finds key 
key = h.key('M')
puts key

# 3. invert key and value from hash
# returns new hash
newHash = h.invert()
puts newHash

# 4. keys 
# returns array containing all the keys
keys = h.keys
puts "#{keys}"

# 5. values
# returns array containing all the values
values = h.values
puts "#{values}"

# 6. length
puts h.length