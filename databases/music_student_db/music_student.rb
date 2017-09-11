# Create a many to many table relationship of music schools, teachers and students.

# STEPS:

# require sqlite3
# create sqlite3 database and assign a variable to the initialization
# create 3 tables - schools, teachers and music students

# -------------------------------------------------------

# require gems
require 'sqlite3'
require 'faker'

# create sqlite3 database
db = SQLite3::Database.new("music_students.db")
db.results_as_hash = true

# create school, teachers and students tables
create_school_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS school(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

db.execute(create_school_table_cmd)

create_teacher_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS teachers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    teaches VARCHAR(255)
  )
SQL

db.execute(create_teacher_table_cmd)

create_student_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS music_students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    instrument VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    school_id INT,
    teacher_id INT,
    FOREIGN KEY (school_id) REFERENCES school(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
  )
SQL

# db.execute(create_student_table_cmd)

# methods that add new columns to tables
def add_new_school(db, name)
  db.execute("INSERT INTO school (name) VALUES (?)", [name])
end

def add_new_teacher(db, name, teaches)
  db.execute("INSERT INTO teachers (name, teaches) VALUES (?, ?)", [name, teaches])
end

def add_new_student(db, name, age, instrument, address, city, state, school_id, teacher_id)
  db.execute("INSERT INTO music_students (name, age, instrument, address, city, state, school_id, teacher_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [name, age, instrument, address, city, state, school_id, teacher_id])
end

# populate tables with new rows

# add new school rows to school table
add_new_school(db, "Harmonic Heart Music")
add_new_school(db, "School of Rock")
add_new_school(db, "Conservatory of Music")

# add new teacher rows to teacher table
add_new_teacher(db, "Britt Flowers", "piano")
add_new_teacher(db, "Laura Riley", "violin")
add_new_teacher(db, "Jack Frisco", "ukulele")
add_new_teacher(db, "Jessica Grist", "flute")


#  add new student rows to student table
add_new_student(db, "Lily", 8, "ukulele", Faker::Address.street_address, "Phoenix", "AZ", 2, 3)
add_new_student(db, "Josephine", 9, "flute", Faker::Address.street_address, "Phoenix", "AZ", 1, 4)
add_new_student(db, "Amara", 7, "piano", Faker::Address.street_address, "Phoenix", "AZ", 1, 1)
add_new_student(db, "Theo", 10, "violin", Faker::Address.street_address, "Phoenix", "AZ", 3, 2)

# make a query to view data of students name, instrument, teacher and school
student_list = db.execute("SELECT music_students.name, music_students.instrument, teachers.name, school.name FROM music_students JOIN teachers.id = music_students.teacher_id FROM music_students JOIN school.id = music_students.school_id")



