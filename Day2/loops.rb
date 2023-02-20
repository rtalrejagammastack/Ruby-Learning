# for
for i in (1..10)
    print i," "
end

for x in ('a'..'d')
    print x," "
end

# while
x = 0
while x<10
    puts x
    x+=1
end

puts "Modifier While"
x=0
begin
    print x," "
    x+=1    
end while x<10

# until
a=0
until a>10
    puts "a= #{a}"
    a+=2
end

# until modifier
x = 15
begin
    puts x
    x-=2
end until x<=10

# loop do
puts "Loop do"
z=0
loop do 
    puts z
    z+=1
    break if z==10
end

# break statement
puts "Break statement"
for i in(1..5)
    break if i>3
    print i," "
end

# next statement
for i in(1..20)
    next if i%2==0
    print i," "
end

# retry statement 
# a = true
# puts ""
# for i in 1..10
#     retry if i==5
#     print i," "
# end

# redo