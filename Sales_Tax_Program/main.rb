require_relative 'modules'
require_relative 'Product'

class Main
    def initialize
        @userProducts = []
        @countOfProduct = 0
        @userInformation={}
        @totolAmount = 0.0
        @totalTax = 0.0
    end
    
    def user_information
        puts "\n\t\tEnter User Information:"
        print "Enter Your Name:"
        @userInformation[:name] = gets.chomp
        print "Enter Mobile Number:"
        @userInformation[:number] = gets.to_i
    end

    def calculate_tax price,type,imported
        perc = Modules::PRODUCT_TYPES[type.to_i-1][:tax]
        
        perc = perc + (Modules::PRODUCT_TYPES[2][:tax]) if imported

        (perc.to_i*price.to_f)/100
    end

    def calculate_bill
        @userProducts.each do |product|
            @totolAmount+= product.price+product.tax
            @totalTax += product.tax
        end
    end

    def generate_receipt
        system('clear')
        print "\n\t\t\t\t\t\t\t RECEIPT"
        print "\nUser Name: "+ @userInformation[:name]
        print "\nMobile Number: "+ @userInformation[:number].to_s
        print "\n\nProducts:"
        @userProducts.each do |product|
            print "\n"+product.quantity.to_s + (product.imported ? " imported ": " ").to_s + product.name.to_s + " : " + (product.price+product.tax).to_s
        end
        print "\nSales Taxes: " + @totalTax.to_s
        print "\nTotal: " + @totolAmount.to_s
        # { |p| show_product p }
    end

    def show_product product
        puts "\t\tName: "+product.name
        puts "\t\tQuantity: "+product.quantity.to_s
        puts "\t\tPrice: " + product.price.to_s
        puts "\t\tType: "+ Modules::PRODUCT_TYPES[product.type-1][:type].to_s
        puts "\t\tImported Product: "+ ((product.imported)? "Yes" : "No")
        puts "\t\tTax: "+ product.tax.to_s
    end

    def get_product
        puts "\n\t\t\t\tProduct " + (@countOfProduct+1).to_s
        print "Enter Product name:"
        name = gets.chomp
        print "\nEnter Product Quantity:"
        quantity = gets.chomp
        print "\nEnter Product Price:"
        price = gets.chomp
        puts "\nChoose Type of Product From below:"
        puts "1. Basic Product"
        print "2. Exempt Product (Food Items,Books,Medical Products)"
        type = gets.to_i
        while (type!=1 && type!=2) do
            print "Enter corrent option:(1/2)"
            type = gets.to_i
        end
        print "\nDo you want Imported Product(Y/N):"
        imported = gets.chomp[0]
        while(imported!='Y' && imported!='N' && imported!='y' && imported!='n')
            print "Enter Correct Option(Y/N):"
            imported = gets.chomp[0]
        end

        if imported=='y'||imported=='Y'
            imported=true
        else 
            imported =false
        end

        tax = calculate_tax(price,type,imported)

        currentProduct = Product.new(quantity,type,name,price,tax.to_f*quantity.to_i,imported)
        puts "\n Current Product Details entered by you:"
        show_product(currentProduct)
        return currentProduct
    end

    def get_products 
        while true
            newProduct = get_product

            @userProducts[@countOfProduct] = newProduct
            @countOfProduct+=1

            print "\nDo you want to add more Products(Y/N): "
            wantsMore = gets.chomp[0]
            while(wantsMore!='Y' && wantsMore!='N' && wantsMore!='y' && wantsMore!='n')
                print "Enter Correct Option(Y/N):"
                wantsMore = gets.chomp[0]
            end
            break if(wantsMore=='n' || wantsMore=='N')
        end
    end

    def pay_bill
        puts "\n\n\t\t\t\t\t Total Amount to Pay : " + @totolAmount.to_s + "$"
    end

    def start
        Modules.showCompany

        get_products

        user_information

        calculate_bill

        generate_receipt

        pay_bill

        puts "\n\t\t\t\t\t\tThank You"
    end

end

program = Main.new
program.start