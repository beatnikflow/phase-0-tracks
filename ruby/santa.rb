# RELEASE 0 #

# - Create a Santa class.
# - Create a speak method that prints "Ho, ho ho! Haaaapy holidays!"
# - Create an eat_milk_and_cookies method that takes a cookie type as a parameter and prints "That was a good <type of cookie>!"
# - Create an initialize method that prints "Initializing Santa instance..."

# ----------------------------------------------------------------------

# RELEASE 1 #

# - Update initial method so that gender and ethnicity are passed on initialization.
# - Insert @reindeer_ranking array into initialize method.
# - Add default @age = 0 to initialize method.
# - Add example initialization code outside of class that pushes various gender and ethnicity attributes to an empty santas array.
# - Use a santas.each method to iterate through the santas array and print information about each Santa. Call all the instance methods.

# - Add more diverse initialization methods: (weight, height)

# ----------------------------------------------------------------------

# RELEASE 2 #

# - Define a celebrate_birthday attribute method that changes Santa's age to 1.
# - Define a get_mad_at method that takes a Reindeer's name as an argument and moves that reindeer to the last place in the reindeer_ranking array.
# - Give a setter method to @gender.
# - Add getter methods for @age and @ethnicity

# ----------------------------------------------------------------------

# RELEASE 3 #

# - Refactor code with attr_reader and attr_accessor


# ----------------------------------------------------------------------

# RELEASE 4 #

# Create multiple Santas with random genders, ethnicities and a random age between 0 and 140.
# Use methods: .times, do |block|, .sample
# Items: example_genders and example_ethnicity arrays, random age generator
# Print out attributes

# -------------------------------------

class Santa
  attr_accessor :name, :gender, :weight, :height, :ethnicity, :age

  def initialize(gender, weight, height, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @weight = weight
    @height = height
    @ethnicity = ethnicity
    @age = Random.rand(0..140)  # previously age = 0

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

  # Previous age method used until - Release 4 -

  # def age=(celebrate_birthday)
  #   @age = celebrate_birthday
  # end

  def get_mad_at(reindeer_name)
    # other option: reindeer_index = reindeer_ranking.index(reindeer_name)

    reindeer = @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer)

  end


end

# RELEASE 1 & 2 CODE ------- >>>

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

# -----------------------------

# RELEASE 4 CODE ----------->>>

 example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

 example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

50.times do |santa|
  gender_pick = example_genders.sample
  ethnicity_pick = example_ethnicities.sample
  p current_santa = Santa.new(gender_pick, "fat", "tall", ethnicity_pick)
  p current_santa.age
end


