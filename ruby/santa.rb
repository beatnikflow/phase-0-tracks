class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak(greeting)
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

santa = Santa.new
santa.greeting
santa.eat_milk_and_cookies("snickerdoodle")