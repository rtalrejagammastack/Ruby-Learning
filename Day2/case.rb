 a = 8

 case a
 when 1
    puts "One"
 when 2
    puts "Two"
 when 3
    puts "Three"
 else
    puts "Greater than three"
 end

 case a 
 when 1,2,3
   puts "Between 1 to 3","Yes"
 when 4..6
   puts "Between 4 to 6"
 when 7...9
   puts "Between 7 to 8"
 end