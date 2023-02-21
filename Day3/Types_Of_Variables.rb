$global_var = "Global"
class States
    @@no_of_states=0
    def initialize(name)
        @state_name = name
        @@no_of_states+=1
    end
    def display()
        puts "State name #@state_name"
    end
    def total_no_of_states
        puts "Total number Of States written #@@no_of_states"
    end
    def display_global
        puts "Global Variable : #$global_var"
    end
end

first = States.new("Madhya Pradesh")
second = States.new("Uttar Pradesh")
third = States.new("Arunachal Pradesh")

first.display()
second.display()
third.display
third.display_global

first.total_no_of_states
second.total_no_of_states
third.total_no_of_states

=begin
    Here @@ is a class variable
    @ is a instance variable
    $ is a global variable
    _ or small letter starting is a local variable   
=end