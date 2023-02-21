module A
    def A.name
        puts "Name"
    end
end
module B
    def B.name
        puts "Rohit"
    end
end
class Name
    include A
    include B
    def print
        B.name
    end
end

c = Name.new
c.print
B.name
A.name