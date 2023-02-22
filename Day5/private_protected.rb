class Parent
    private 
    def role
        puts 'Parent'
    end
end

class Child < Parent
    def initialize
        role
    end
    def role
        puts "Child"
    end
end

puts Child.private_methods.to_a