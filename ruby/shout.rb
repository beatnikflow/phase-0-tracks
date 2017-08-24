module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
end

module Happy
  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("I'm cranky")

p Happy.yell_happily("I'm happy")