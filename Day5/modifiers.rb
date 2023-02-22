class Food
    def initialize(name)
        @name = name
    end

    def ==(other)
        name ==other.name
    end

    protected
    attr_reader:name
end
food = Food.new("chocolate")
puts food == food

chocolate = Food.new("Dark chocolate")
puts food == chocolate
# That’s the difference, the fact that protected keeps the method private, but it also allows you to call that method on an object.