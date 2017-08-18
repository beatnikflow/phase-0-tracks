
# Purpose: Write a program that will allow an interior designer to enter the details of a given client: name, age, number of children, decor theme, number of rooms, likes neutral colors, likes bright colors, is a fan of art.

# Steps -

# Prompt the user for information for each question.

# Convert user input to appropriate data type.

# Print the hash onto screen when user has input all information.

# Give user the opportuity to update a key. If user says "none", skip updating. If user enters info to be updated, the program should ask for a new value and update that value.

# Print latest version of hash and exit program.

# ........................................................ #

puts "Client Interior Design Form"

puts "Client Name:"
client_name = gets.chomp

puts "Age:"
client_age = gets.chomp

puts "# of Children:"
children_num = gets.chomp

puts "Decor Theme:"
decor_theme = gets.chomp

puts "Number of Rooms:"
room_num = gets.chomp

puts "Likes Neutral Colors (True/False)"
netural_colors = gets.chomp

puts "Likes Bright Colors (True/False)"
bright_colors = gets.chomp

puts "Is a Fan of Art (True/False)"
art_fan = gets.chomp
