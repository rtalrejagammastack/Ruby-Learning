# Frequency of each character using hash table
text = "I am learning Ruby and it is fun!"

freqs = {}
freqs.default = 0
text.each_char {|c| freqs[c]+=1}

freqs.each {|key,value| puts "#{key} : #{value}" if (key>='a' && key<='z') || (key>='A' && key<='Z')}