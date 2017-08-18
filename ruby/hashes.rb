
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

client_form = []

puts "Client Name:"
client_name = gets.chomp
client_form << client_name

puts "Age:"
client_age = gets.chomp
client_age = client_age.to_i
client_form << client_age

puts "# of Children:"
children_num = gets.chomp
children_num = children_num.to_i
client_form << children_num

puts "Decor Theme:"
decor_theme = gets.chomp
client_form << decor_theme

puts "Number of Rooms:"
room_num = gets.chomp
room_num = room_num.to_i
client_form << room_num

puts "Likes Neutral Colors (True/False)"
neutral_colors = gets.chomp
client_form << neutral_colors

puts "Likes Bright Colors (True/False)"
bright_colors = gets.chomp
client_form << bright_colors

puts "Is a Fan of Art (True/False)"
art_fan = gets.chomp
client_form << art_fan

p client_form



p client_form