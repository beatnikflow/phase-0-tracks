
# Purpose: Write a program that will allow an interior designer to enter the details of a given client: name, age, number of children, decor theme, number of rooms, likes neutral colors, likes bright colors, is a fan of art.

# Steps -

# Prompt the user for information for each question.

# Convert user input to appropriate data type.

# Print the hash onto screen when user has input all information.

# Give user the opportuity to update a key. If user says "none", skip updating. If user enters info to be updated, the program should ask for a new value and update that value.

# Print latest version of hash and exit program.

# ........................................................ #


# Purpose: Write a program that will allow an interior designer to enter the details of a given client: name, age, number of children, decor theme, number of rooms, likes neutral colors, likes bright colors, is a fan of art.

# Steps -

# Prompt the user for information for each question.

# Convert user input to appropriate data type.

# Print the hash onto screen when user has input all information.

# Give user the opportuity to update a key. If user says "none", skip updating. If user enters info to be updated, the program should ask for a new value and update that value.

# Print latest version of hash and exit program.

# ........................................................ #

puts "Client Interior Design Form"

puts "Client Interior Design Form"

client_form = {}

puts "Client Name:"
client_form[:name] = gets.chomp

puts "Age:"
client_form[:age] = gets.chomp.to_i

puts "# of Children:"
client_form[:children] = gets.chomp.to_i

puts "Decor Theme:"
client_form[:decor] = gets.chomp

puts "Number of Rooms:"
client_form[:rooms] = gets.chomp.to_i

puts "Likes Neutral Colors (True/False)"
client_form[:netural] = gets.chomp

puts "Likes Bright Colors (True/False)"
client_form[:bright] = gets.chomp

puts "Is a Fan of Art (True/False)"
client_form[:art] = gets.chomp

p client_form

puts "Any information needing updating? Type key and value needing updates, or 'none' if finished."
update_info = gets.chomp
  if update_info = "none"
    p client_form
  else

    p client_form
  end
