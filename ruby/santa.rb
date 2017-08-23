

class Santa
  attr_accessor :name, :gender, :weight, :height, :ethnicity, :age

  def initialize(gender, weight, height, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @weight = weight
    @height = height
    @ethnicity = ethnicity
    @age = 0
  end

  # def gender
  #   @gender
  # end

  # def weight
  #   @weight
  # end

  # def height
  #   @height
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def age
  #   @age
  # end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def reindeer_ranking
    reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def age=(celebrate_birthday)
    @age = celebrate_birthday
  end

  # def get_mad_at(reindeer_ranking, reindeer_name)
  #   # reindeer_ranking.insert(-1, reindeer_ranking.delete_at(0))

  # end


end

santas = []

santas << Santa.new("female", "skinny", "short", "Latino")
santas << Santa.new("bigender", "fat", "5-foot-5", "white")
santas << Santa.new("male", "pudgy", "dwarf", "Japanese")
santas << Santa.new("female", "model-like", "tall", "prefer not to say")
santas << Santa.new("gender fluid", "muscular", "Shaq-height", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A", "N/A", "N/A")


santas.each do |santa|
  santa.age = 1
  puts "I'm a #{santa.age} year old #{santa.gender}, #{santa.weight}, #{santa.height}, #{santa.ethnicity} Santa"
  santa.speak
  santa.eat_milk_and_cookies("snickerdoodle")
  puts "There are #{santas.length} Santa instances in the array"
  puts "----"
end

# p santa.get_mad_at("Rudolph")



