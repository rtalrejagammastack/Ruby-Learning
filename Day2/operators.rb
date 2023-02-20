a = 42
b = 8

# And &&
if a>7 && b<11
    puts "YES"
end

# OR ||
if a>7 || b<11
    puts "YES"
end

# OR ||
a = 5
if a>6 || a<8
    puts a/2
else 
    puts a
end

# NOT !
a = 7
puts !(a>5)

a = 5
if !(a>2)
    print("2")
elsif !(1+2==a)
    print("3")
else
    print("4")
end