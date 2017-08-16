def animals
  x1 = "dogs"
  x2 = "cats"
  puts "This is before the block"
  yield(x1, x2)
  puts "This is after the block"

end

animals { |x1, x2| puts "I'm not sure if I want #{x1} or #{x2}" }

dog_breeds = ["terrior", "bassett hound", "golden lab", "rottweiler", "corgi"]

p dog_breeds
dog_breeds.each do |dogs|
  puts dogs
  dogs.next
end

p dog_breeds

dog_breeds.map! do |dogs|
  puts dogs
  dog_breeds.rotate
end

p dog_breeds

pet_types = {
  cats: "tabby",
  dogs: "corgi",
  rabbits: "long ear",
  fox: "fennec",
}