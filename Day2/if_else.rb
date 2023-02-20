a = 42
if a>7
    puts "Yes"
end

# Example 2
if a>7
    puts "Greate than 7"
    if a<41
        puts "Less than 42"
    end
end

#Example 3
if a>7 && a<45
    puts "Greate than 7 and less than"
    if a<41
        puts "Less than 42"
    end
end

# Example 4
puts "Greater than 7" if a>7

# Example 5
if a>45
    puts "Gretaer than 45"
elsif a>90
    puts "Greater than 90"
else 
    puts "#{a}"
end

# Example 6
unless a>45
    puts "Less than 45"
end

# Example 7
unless a>45
    puts "Less than 45"
end

# Example 8
unless a>4
    puts "Less than 4"
else
    puts "Greater than 4"
end

# Example 9
puts "Less than 45" unless a>45

# Example 10 Case when
age = 5
case age
when 0..2
    puts "Baby"
when 3..6
    puts "Little child"
when 7..12
    puts "child"
when 13..18
    puts "Youth"
else 
    puts "Adult"
end

