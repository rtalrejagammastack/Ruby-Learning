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