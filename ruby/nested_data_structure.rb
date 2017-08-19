# # Design and build a nested data structure containing a classroom full of supplies.

# # Define the classroom variable, and include main aspects of classroom under main hash:
#   teacher_desk,
#   student_desk,
#   book_shelf,
#   backpacks,
#   chalkboard

# # Under the teacher_desk, nest a formal name of "Teacher Desk". Within that hash, nest teacher_supplies containing:
#   "homework to grade",
#   "apple",
#   "stickers",
#   "pens and pencils"

# # Under the student_desk, nest a formal name of "Student Desk". Within that hash, nest desk_contents containing:
#   "assignments",
#   "homework",
#   "pencils",
#   "random broken crayons",
#   "used gum underneath desk",
#   "fidget spinner"

# # Under the book_shelf, nest a formal name of "Book Shelf". Within that hash, nest bookshelf_supplies containing: "books" and "videos".

# #  - Books will contain:
#       number_of_books
#        favorite_books:
#           "Dr. Seuss",
#           "The Giving Tree",
#           "The Stinky Cheese Man",
#           "Ramona Quimby"

# #  - Videos will contain:
#        number_of_videos
#        favorite_videos
#           "School House Rock",
#           "Mr. Holland's Opus",
#           "Bill Nye the Science Guy",
#           "The Magic School Bus"

# # Under backpacks, nest a formal name of "Backpacks". Within that hash, nest backpack_contents containing:
#   "late homework",
#   "field-trip permission slip",
#   "pencils",
#   "lunch box",
#   "report card"

# # Under chalkboard, nest a formal name of "Chalkboard". Within that hash, nest chalkboard_supplies containing:
#   "white chalk",
#   "colored chalk",
#   "eraser",
#   "giant ruler",
#   "pointer"

# ........................................................ #

classroom = {
    teacher_desk: {
      formal_name: 'Teacher Desk',
        teacher_supplies: [
          "homework to grade",
          "apple",
          "stickers",
          "pens and pencils"
        ]
    },
    student_desk: {
      formal_name: 'Student Desk',
        desk_contents: [
          "assignments",
          "homework",
          "pencils",
          "random broken crayons",
          "fidget spinner",
          "used gum underneath desk"
        ]
    },
    book_shelf: {
      formal_name: 'Book Shelf',
        bookshelf_supplies: {
          number_of_books: 42,
          favorite_books: [
            "Dr. Seuss",
            "The Giving Tree",
            "The Stinky Cheese Man",
            "Ramona Quimby"
          ],
          number_of_videos: 19,
          favorite_videos: [
            "School House Rock",
            "Mr. Holland's Opus",
            "Bill Nye the Science Guy",
            "The Magic School Bus"
          ]
        }
    },
    backpacks: {
      formal_name: 'Backpacks',
        backpack_contents: [
          "late homework",
          "field-trip permission slip",
          "pencils",
          "lunch box",
          "report card"
        ]
    },
    chalkboard: {
      formal_name: 'Chalkboard',
        chalkboard_supplies: {}
    }
}