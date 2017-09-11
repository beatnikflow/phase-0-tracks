# Create a user interface for a music student intake that stores the students in a database.

# Ask user if they want to add a new student or look up a student
# Prompt user for the music students name, age and instrument played
# Ask user if they would like to view the list of students after new student has been input

# STEPS:

# require sqlite3
# create sqlite3 database and assign a variable to the initialization
# create a new student command

# -------------------------------------------------------

# require gems
require 'sqlite3'

# create sqlite3 database
db = SQLite3::Database.new("music_students.db")
db.results_as_hash = true

# create new student command
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS music_students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    instrument VARCHAR(255)
  )
SQL

# create a student table
db.execute(create_table_cmd)

# add a test student
# puts "Welcome to Harmonic Heart Music's Student Database!"
# puts "Would you like to add a student to the database or look up a student? Type 'add' or 'look up'."

# user_input = gets.chomp

# def add_new_student(db, name, age, instrument)
#   if user_input == "new"
#     puts "Please enter the following information: name"
#     name = gets.chomp
#     puts "Please enter the following information: age"
#     age = gets.chomp
#     puts "Please enter the following information: instrument"
#     instrument = gets.chomp
#   end
#   db.execute("INSERT INTO music_students (name, age, instrument) VALUES (?, ?)", [name, age, instrument])
# end

# add_new_student(db, name, age, instrument)


def add_new_student(db, name, age, instrument)
  db.execute("INSERT INTO music_students (name, age, instrument) VALUES (?, ?, ?)", [name, age, instrument])
end

add_new_student(db, "Lily", 8, "ukulele")
add_new_student(db, "Josephine", 9, "flute")
add_new_student(db, "Amara", 7, "piano")
add_new_student(db, "Theo", 10, "violin")

student_list = db.execute("SELECT * FROM music_students")

student_list.each do |student|
  puts "#{student['name']} is #{student['age']} and plays the #{student['instrument']}"
end
