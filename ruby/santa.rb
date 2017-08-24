# RELEASE 4 #

# Create multiple Santas.
# Methods .times, do |block|, .sample
# Items: example_genders and example_ethnicity arrays, age array?
# puts 'I am a (random_age), (example_gender random), (example_ethnicity) Santa!'

# -------------------------------------

class Santa
  attr_accessor :name, :gender, :weight, :height, :ethnicity, :age

  def initialize(gender, weight, height, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @weight = weight
    @height = height
    @ethnicity = ethnicity
    @age = Random.rand(0..140)

    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]


  end

  # Previous setter methods:

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

  # def age=(celebrate_birthday)
  #   @age = celebrate_birthday
  # end

  def get_mad_at(reindeer_name)
    # other option: reindeer_index = reindeer_ranking.index(reindeer_name)

    reindeer = @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer)

  end


end

# santas = []

# santas << Santa.new("female", "skinny", "short", "Latino")
# santas << Santa.new("bigender", "fat", "5-foot-5", "white")
# santas << Santa.new("male", "pudgy", "dwarf", "Japanese")
# santas << Santa.new("female", "model-like", "tall", "prefer not to say")
# santas << Santa.new("gender fluid", "muscular", "Shaq-height", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A", "N/A", "N/A")


# santas.each do |santa|
#   santa.age = 1
#   puts "I'm a #{santa.age} year old #{santa.gender}, #{santa.weight}, #{santa.height}, #{santa.ethnicity} Santa"
#   santa.speak
#   santa.eat_milk_and_cookies("snickerdoodle")
#   puts "There are #{santas.length} Santa instances in the array"
#   puts "----"
#   p santa.get_mad_at("Rudolph")
#   puts "----"
# end

 example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

 example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

5.times do |santa|
  gender_pick = example_genders.sample
  ethnicity_pick = example_ethnicities.sample
  p current_santa = Santa.new(gender_pick, "fat", "tall", ethnicity_pick)
  p current_santa.age
end


