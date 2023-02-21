# $LOAD_PATH << '.'

require_relative 'moral'
require_relative 'trig'

y = Trig.sin(Trig::PI/4)
puts y

wrongdoing = Moral.sin(Moral::VERY_BAD)
puts wrongdoing

wrongdoing = Moral.sin(Moral::BAD)
puts wrongdoing