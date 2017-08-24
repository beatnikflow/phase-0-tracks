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

Shout.yell_angrily("I'm cranky")

Shout.yelling_happily("I'm happy")