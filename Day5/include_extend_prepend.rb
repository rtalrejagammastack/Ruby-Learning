module A
    def i_am_method
        "A Method"
    end
end
module B
    def i_am_method
        "B Method"
    end
end
class Main
    extend B
    prepend A
end
Main.i_am_method

print Main.ancestors.inspect