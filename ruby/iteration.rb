def animals
  x1 = "dogs"
  x2 = "cats"
  puts "This is before the block"
  yield(x1, x2)
  puts "This is after the block"

end

animals { |x1, x2| puts "I'm not sure if I want #{x1} or #{x2}" }
