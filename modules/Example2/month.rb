require_relative 'support'

puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year

class Decade 
# include Week
    attr_accessor :no_of_years
    def initialize
        @no_of_years = 10
    end
    def no_of_month
        puts "Today Is: " + Week::FIRST_DAY
        Week.weeks_in_month
        number = @no_of_years*12
        puts "No of months in "+ @no_of_years.to_s+ " years is: "+ number.to_s
    end
end
d1 = Decade.new
d1.no_of_month
puts d1.no_of_years