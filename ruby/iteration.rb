def animals
  x1 = "dogs"
  x2 = "cats"
  puts "This is before the block"
  yield(x1, x2)
  puts "This is after the block"

end

animals { |x1, x2| puts "I'm not sure if I want #{x1} or #{x2}" }

# ......................................... #

dog_breeds = ["terrior", "bassett hound", "golden lab", "rottweiler", "corgi"]

puts "This is before the array change"
p dog_breeds

dog_breeds.each do |dogs|
  dogs.next
end

puts "This is after the array change but before the map change"
p dog_breeds

dog_breeds.map! do |dogs|
 puts dogs
 dogs = dogs + " dog"
end

puts "This is after the array change with map"
p dog_breeds

# ........................................... #

pet_types = {
  cat: "tabby",
  dog: "corgi",
  rabbit: "long ear",
  fox: "fennec",
}

puts "This is before the hash change"
p pet_types

pet_types.each do |species, type|
  puts "#{type} is a type of #{species}!"
end

puts "This is after the hash change"
p pet_types

pet_types.map do |species, type|
  puts type
  type = "orange #{type}"
end

p pet_types

# ............................................. #

numbers = [ 104, 37, 11, 92, 20912]

numbers.delete_if { |numbers| numbers < 90 }

# .............................................. #

numbers = { "a" => 8737, "b" => 11000, "c" => 11001 }

numbers.delete_if { |key, value| key >= "b" }































