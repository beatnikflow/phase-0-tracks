# class Puppy
#   def initialize
#     puts "Initialize new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num)
#     num.times do |word|
#     puts "Woof!"
#     end
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(num)
#     years = num * 7
#     p years
#   end

#   def eats
#     puts "gobble, gobble, gobble!"
#   end

# end

# newpuppy = Puppy.new
# newpuppy.fetch("ball")
# newpuppy.speak(3)
# newpuppy.roll_over
# newpuppy.dog_years(7)
# newpuppy.eats

# ----------------------------------------------- #

class Bicycle
  def initialize
    puts "Get ready to ride..."
  end

  def jump
    puts "*Jumps high!*"
  end

  def brake
    puts "*Brakes slowly*"
  end
end

bicycle_names = []

50.times do
  bicycle = Bicycle.new
  bicycle_names << bicycle
end

bicycle_names.each do |item|
  puts item.jump
  puts item.brake
end