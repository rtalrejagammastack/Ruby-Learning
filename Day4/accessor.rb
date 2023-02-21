class Box
    # attr_reader
    # attr_writer
    attr_accessor :weight,:height
    def initialize(w,h)
        @weight ,@height = w,h
    end
    # def weight
    #     @weight
    # end
    # def weight=(w)
    #     @weight=w
    # end
end

b = Box.new(10,20)
b.weight=14
puts b.weight