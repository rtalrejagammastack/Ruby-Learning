class Product
    attr_accessor :quantity,:type,:name,:price,:tax,:imported
    def initialize(q,t,n,p,tax,i)
        @quantity = q.to_i
        @type = t.to_i
        @name = n
        @price = p.to_f.round(2)
        @tax = tax.to_f.round(2)
        @imported = i
    end
end