# Take a spy's real name and write a method that creates a fake name by doing the following:

#     - Swapping first and last name.

#     - Changing all of the vowels (aeiou) to the next vowel in 'aeiou' (eioua), and all of the consonants to the next consonant in the alphabet.

# -------------------------------------------------------- #

# ALGORITHM #

# 1. Define a method that will swap words in a user input string.

# 2. Prompt user for name

# 3. Name string words will be swapped.

# 4. Define a method that takes reversed name string and changes vowels to the next successive vowel.

# 5. Define a method that takes reversed name string with modified vowels and change consonants to the next successive consonant.

# -------------------------------------------------------- #

puts "What is your full name?"
full_name = gets.chomp

# Splitting name up into an array
name_swap = full_name.split(' ')

# Swapping the index of the first and last name
name_swap[0], name_swap[1] = name_swap[1], name_swap[0]

p name_swap

# Joining the new name swap back into a string
name_join = name_swap.join(" ")

p name_join

# Splitting the swapped name into an array of characters to iterate through
name_split = name_join.split("")

p name_split

# Time to change the vowels!
vowel_change = name_split

vowel_change.map! { |element|
  if(element == "a")
      "e" # change "hello" to "hi"
  elsif(element == "e")
        "i"
  elsif(element == "i")
        "o"
  elsif(element == "o")
        "u"
  elsif(element == "u")
        "a"
  else
      element
  end
}

p vowel_change

# Time to change the consonants!
consonant_change = vowel_change

consonant_change.map! { |element|
  if(element == "b")
      "c" # change "hello" to "hi"
  elsif(element == "c")
        "d"
  elsif(element == "d")
        "f"
  elsif(element == "f")
        "g"
  elsif(element == "g")
        "h"
  elsif(element == "h")
        "j"
  elsif(element == "j")
        "k"
  elsif(element == "k")
        "l"
  elsif(element == "l")
        "m"
  elsif(element == "m")
        "n"
  elsif(element == "n")
        "p"
  elsif(element == "p")
        "q"
  elsif(element == "q")
        "r"
  elsif(element == "r")
        "s"
  elsif(element == "s")
        "t"
  elsif(element == "t")
        "v"
  elsif(element == "v")
        "w"
  elsif(element == "w")
        "x"
  elsif(element == "x")
        "y"
  elsif(element == "y")
        "z"
  elsif(element == "z")
        "b"
  else
      element
  end
}

p consonant_change

# Join the changes back into a string
alias_name = consonant_change.join("")

p alias_name







