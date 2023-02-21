class Box 
    attr_accessor :height
    # @height = 10
    def initialize(h)
        @height = h
    end
    # def height
    #     @height
    # end
end

b = Box.new(10)
b.freeze
b.unfreeze
b.height = 36

puts b.height

