$global_hu = "Global Variable"
class Customer
    @@no_of_customer = 0;
    def initialize(id,name,addr)
        @cust_id = id.to_i
        @cust_name = name
        @cust_addr = addr

        @@no_of_customer+=1
    end
    def getDeatils
        puts "Id is #@cust_id"
        puts "Name is #@cust_name"
        puts "Address is #@cust_addr"
    end
end

cust1 = Customer.new("2","John","Wisdom Apartments Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.getDeatils
cust2.getDeatils

# Default value in Methods
def default_value_check(a=2,b)
    puts a+b
end
# method call ways
default_value_check(1)
default_value_check 1
default_value_check 5,1
default_value_check(5,1)

# Return values from methods
# If return not specify then it will return the last declared variable ...here k
def test 
    i=100
    j=10
    k=0
end
i = test
puts i

# This will return all the 3 variable...if nothing is given in return then it will return nil
def test
    i = 100
    j = 200
    k = 300
 return i, j, k
 end
 var = test
 puts "#{var}"


#  Variable Number of Parameters
def sample(*test)
    puts "The number of parameters is: #{test.size}"
    (0...test.size).each {|i| puts "The parameter is #{test[i]}"}
end
sample "Zara",6,'f'
sample "Mac" , "36","M","MCA"

# Class Methods can also be called directly without creating objects

class Accounts
    def reading_charge
        puts "reading Charge"
    end
    def Accounts.return_date
        puts "date"
    end
    alias r reading_charge
end

Accounts.return_date
# Accounts.reading_charge   returns error

# Alias Statement
a =Accounts.new
a.r 
alias $g $global_hu
puts $g

# undef Statement



# constructor...getters...setters
class Box
    def initialize(w,h)
        @width,@height = w,h
    end
    def printwidth
        @width
    end
    def printHeight 
        @height
    end
    def setWidth=(value)
        @width = value
    end
    def setHeight(value)
        @height = value
    end
end

box = Box.new 10,20
x = box.printwidth
y = box.printHeight
puts "Height is: #{y}\nWidth is: #{x}"

box.setHeight  50
box.setWidth  = 50
x = box.printwidth
y = box.printHeight
puts "Height is: #{y}\nWidth is: #{x}"


# Class Methods and Variables
# Class method classname.methodName which can be called without creating object of class 
# another way self.method_name
# Class variable that starts with @@
class Box
    @@count =0;
    def initialize(h,w)
        @width = w
        @height=h
        
        @@count+=1
    end

    def self.printCount
        @@count
    end
end

a = Box.new 10,20
b = Box.new 10,30
puts Box

# to_s Method
# Every class should have to_s as a instance method to return a string representation of object
class Box
    def initialize(h,w)
        @width ,@height = w,h
    end
    def to_s
        "(w:#@width , h:#@height)"
    end
end

box = Box.new 10,20
puts box.to_s

# Access Controls
# define a class
class Box
    # global variable 
    @@no_of_box = 0
    # constructor
    def initialize(w,h)
        # instance variable
        @width,@height = w,h

        @@no_of_box+=1
    end 
    # instacne method which is bydefault public
    def getArea
        getWidth * getHeight
    end

    # define private access modifiers
    def getWidth
        @width
    end

    def getHeight
        @height
    end
    # make the private
    private :getWidth, :getHeight
    
    # instance method to print area
    def printArea
        @area = getWidth * getHeight
        puts @area
    end

    # make it protected
    protected :printArea
end

box = Box.new 10,20
a = box.getArea
puts a
# box.printArea   shows error


# inheritance
# MultiLevel not supported and instead ot it ruby has mixins

class Box 
    def initialize(w,h)
        @width,@height = w,h
    end
    def getArea
        @width*@height
    end
end
class BigBox < Box
    # new instance method
    def printArea
        puts "Area is : #{@width*@height}"
    end
end
b = BigBox.new 20,30
b.printArea
puts b.getArea
a = Box.new 20,30
puts a.getArea

# Method OverRidding

class BigBox1 < Box
    # Change Existing getArea method
    def getArea 
        @width*@height*2
    end
end

b = BigBox1.new 10,20
puts b.getArea

# Method Overloading is not supported

# Operator Overloading
class Box 
    def initialize(w,h)
        @width,@height = w,h
    end

    def +(other)   #To perform vector addition
        Box.new(@width + other.width,@height + other.height)
    end

    def *(scalar)   # to perofrm scalar multiplication 
        Box.new(@width*scalar,@height*scalar)
    end

    def -@       #define unary minus to negate width and height
        Box.new(-@width,-@height)
    end
    def getValues
        return @width,@height
    end
end

a = Box.new 10,20
b = Box.new 20,20
puts a.getValues.inspect
puts a.getValues.inspect
c = a.*(4)
puts c.getValues.inspect
c = a.-@
puts c.getValues.inspect
# c = a.+(b)   error occuring
puts c.getValues.inspect


# Freezing Object
# we cannot change its instancevariable
# objectName.freeze

# check object is freeze or not 
# objectname.freeze? return true if it is

# Class Constants
class Box1
    @@class_variable = 20
    BOX_WEIGHT = 10
    def print 
        BOX_WEIGHT+10
    end
end
b = Box1.new()

puts b.print
puts Box1::BOX_WEIGHT


# Class Objects using Allocate

class Box
    def initialize(w,h)
        @width,@height = w,h
    end
    def getArea
        if @width && @height
            @width*@height
        else
            @width
        end
        
    end
end
box1 = Box.new(30,30)
puts box1.getArea

box2 = Box.allocate
puts box2.getArea


# Class Information
# class MyName
#     def print
        # puts "#{self.type}"
#         puts self.name
#     end
# end

# m = MyName.new
# m.print