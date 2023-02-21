def p(*val)
    puts val.inspect
end
module A
    def a1
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
    include A include B
    def s1
        p "Sample.s1"
    end
end

samp = Sample.new
samp.a1