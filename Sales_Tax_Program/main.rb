require_relative 'modules'
include Modules
def start
    @all_Products = []
    showCompany

    # Get Products 
    count_of_product = 1
    while true
        newProduct = getProduct(count_of_product)

        @all_Products[count_of_product-1] = newProduct

        print "\nDo you want to add more Products(0 for no): "
        wantsMore = gets.to_i
        break if(wantsMore==0)
        count_of_product+=1
    end

    # Get Receipt
    showProducts
end

def getProduct(count_of_product)
    puts "\t\t\t\tProduct " + (count_of_product).to_s
    print "Enter Product name:"
    name = gets.chomp
    print "\nEnter Product Quantity:"
    quantity = gets.chomp
    print "\nEnter Product Price:"
    price = gets.chomp
    puts "\nChoose Type of Product From below:"
    puts "1. Basic Product (10% tax)"
    puts "2. Exempt Product (0% tax)"
    print "3. Imported Product (14% tax):"
    type = gets.chomp
    current_Product = Product.new(quantity,type,name,price)
    puts "\n Current Product Details entered by you:"
    showProduct(current_Product)
    return current_Product
end

class Product
    attr_accessor :quantity,:type,:name,:price
    def initialize(q,t,n,p)
        @quantity = q
        @type = t
        @name = n
        @price = p
    end
end

def showProduct product
    puts "\t\tName: "+product.name
    puts "\t\tQuantity: "+product.quantity
    puts "\t\tPrice: " + product.price
    puts "\t\tType: "+product.type
end
def showProducts
    @all_Products.each{ |p| showProduct p}
end
start