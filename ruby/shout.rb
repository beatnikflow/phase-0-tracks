# RELEASE 1 #

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# end

# module Happy
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily("I'm cranky")

# p Happy.yell_happily("I'm happy")

# --------------------------------------------

# RELEASE 3 #

module Shout
  def yell_loudly(words)
    words.upcase + "!!!"
  end
end

class King_Leonidus
  include Shout
end

class Napoleon_Dynamite
  include Shout
end

class Brick_Tamland
  include Shout
end

class William_Wallace
  include Shout
end

king = King_Leonidus.new
p king.yell_loudly("I am Sparta")

napoleon = Napoleon_Dynamite.new
p napoleon.yell_loudly("Eat the food")

brick = Brick_Tamland.new
p brick.yell_loudly("loud noises")

william = William_Wallace.new
p william.yell_loudly("freeeeeeeeeedom")