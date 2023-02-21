module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)
        if badness==0
            "You are very bad"
        else
            "You are just Bad"
        end
    end
end