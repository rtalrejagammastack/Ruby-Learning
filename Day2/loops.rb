# while loop

# Example 1
i=0 
while i<5 do
    puts "Inside the loop #{i}"
    i+=1
end

# Example 2
begin
    puts "Inside the loop #{i}"
    i+=1;
end while i<10

# Example 3
begin
    puts "Inside the loop #{i}"
    i-=1;
end until i<5

# Example 4
until i<0
    puts "Inside the loop #{i}"
    i-=1
end until i<0

# Example 5
for i in 0..5
    puts i
end

# Example 6
(0..5).each do |j|
    puts j
end

# Example 7
for i in 0..5
    if i==2 
        break
    end
    puts i
end

# Example 8
puts "Example 8"
for i in 0..5
    if i<2 
        next
    end
    puts i
end

# break
# next
# redo
# retry