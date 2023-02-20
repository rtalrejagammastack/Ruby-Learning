text = "I am learning Ruby and it is fun!"
text.downcase!

freqs = {}
freqs.default = 0
# The default method is used to set the default value for the hash, meaning that any key that does not have a value assigned will be set to that value.
text.each_char do |char|
    freqs[char]+=1
end

# Way 1
puts freqs

# Way 2
("a".."z").each {|c| print "#{c} : #{freqs[c]} "}

# Way 3 best
("a".."z").each {|c| print "#{c} : #{freqs[c]} "  if freqs[c]!=0}