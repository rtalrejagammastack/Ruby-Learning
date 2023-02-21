module MyModule
    class TestClass
        def initialize
            puts "Test Class Object created"
        end
        def myMethod 
            puts "User-defined Method"
        end
    end
end

obj = MyModule::TestClass.new
obj.myMethod