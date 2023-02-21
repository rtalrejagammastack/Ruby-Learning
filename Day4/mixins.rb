def p(*val)
    puts val.inspect
end
module A
    myVar = 0
    def A.a1
        p "A.a1"
    end
    def a2
        p "A.a2"
    end
end

module B
    def b1
        p "B.b1"
    end
    def b2
        p "B.b2"
    end
end

class Sample

    include A 
    include B

    def change
        myVar= 5
    end
end

samp = Sample.new
# samp.A.a1
# puts A::MYVAR
samp.a2
samp.b1
samp.b2
puts A::myVar