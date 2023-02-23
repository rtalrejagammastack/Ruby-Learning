@total_price = 0
@tax = 0
@output = []
def sales
    basic_products= ["music CD", "bottle of perfume"]
    exempt_products = ["book", "box of chocolates", "chocolate bar", "packet of headache pills"]
    input = gets.chomp.split
    quantity = input[0].to_i
    price = input[-1].to_f.round(2)
    imported = input.include? "imported"
    name = ""
    input[1...-2].each{|s| name+= s+" " if s!="imported"}
    tax = 10 if basic_products.include? name.strip
    tax = 0 if exempt_products.include? name.strip
    tax +=5 if imported
    tax = (((price*tax)/100) * quantity).to_f.round(2) 
    @tax += tax
    @total_price += price+tax
    @output << quantity.to_s + (imported ? " imported " : " ").to_s + name + " : " + (price+tax).to_f.round(2).to_s 
end

t = gets.to_i
t.times {sales}

puts "\t\t\t\t\t RECEIPT: "
@output.each {|o| puts o}
puts "Sales Taxes: "+ @tax.round(2).to_s
puts "Total: "+ @total_price.round(2).to_s
puts "\t\t\t\t\t THANK YOU"