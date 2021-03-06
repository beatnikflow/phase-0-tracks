# Take a spy's real name and write a method that creates a fake name by doing the following:

#     - Swapping first and last name.

#     - Changing all of the vowels (aeiou) to the next vowel in 'aeiou' (eioua), and all of the consonants to the next consonant in the alphabet.

# -------------------------------------------------------- #

# ALGORITHM #

# 1. Create an empty array for names.

# 2. Create a loop do that prompts user for a full_name.

# 3. Break loop when 'quit' is entered and print name array. Push full_names to empty names array.

# 4. Downcase full_name, split the array into characters using .split and assign a new variable of name_swap

# 5. Swap the index of the first and last name.

# 6. Join the characters back together with .join and assign a new variable of name_join.

# 7. Split the characters into an array using .split for iteration and assign a new variable of name_split

# 8. Rename name_split to variable vowel_change. Use .map, a hash, block statement and if/else statements to replace each vowel to the next successive vowel.

# 9. Rename vowel_change to consonant_change. Use .map, a hash, block statement and if/else statements to replace each consonant to the next successive consonant.

# 10. Join array of characters back together with .join and rename consonant_change to newname variable.

# 11. Use .split, .map and a hash to capitalize the first letter of each word and then .join to join back together.

# 12. Rename newname to capitalized_name.

# 13. Rename capitalized_name to final variable name of alias_name and push alias names to names array.

# 14. Use the statement: puts "The spy #{full_name} now has an encrypted name of #{alias_name}"

# 15. Print all data entered by user.

# -------------------------------------------------------- #

# Create a loop that allows user to continue entering names until they type 'quit'

names = []

loop do
  puts "Enter a full name! (Type 'quit' when done!)"
  full_name = gets.chomp
  break if full_name == 'quit'
  names << full_name


# Split the name up into an array.
name_swap = full_name.downcase.split(' ')

p name_swap

# Swap the index of the first and last name.
name_swap[0], name_swap[1] = name_swap[1], name_swap[0]

p name_swap

# Join the new name swap back into a string.
name_join = name_swap.join(" ")

p name_join

# Split the swapped name into an array of characters to iterate through.
name_split = name_join.split("")

p name_split

# Change the vowels to their successive vowels
vowel_change = name_split

vowel_change.map! { |letter|
  if(letter == "a")
      "e" # change "hello" to "hi"
  elsif(letter == "e")
        "i"
  elsif(letter == "i")
        "o"
  elsif(letter == "o")
        "u"
  elsif(letter == "u")
        "a"
  else
      letter
  end
}

p vowel_change

# Change the consonants to their successive consonant
consonant_change = vowel_change

consonant_change.map! { |letter|
  if(letter == "b")
      "c" # change "hello" to "hi"
  elsif(letter == "c")
        "d"
  elsif(letter == "d")
        "f"
  elsif(letter == "f")
        "g"
  elsif(letter == "g")
        "h"
  elsif(letter == "h")
        "j"
  elsif(letter == "j")
        "k"
  elsif(letter == "k")
        "l"
  elsif(letter == "l")
        "m"
  elsif(letter == "m")
        "n"
  elsif(letter == "n")
        "p"
  elsif(letter == "p")
        "q"
  elsif(letter == "q")
        "r"
  elsif(letter == "r")
        "s"
  elsif(letter == "s")
        "t"
  elsif(letter == "t")
        "v"
  elsif(letter == "v")
        "w"
  elsif(letter == "w")
        "x"
  elsif(letter == "x")
        "y"
  elsif(letter == "y")
        "z"
  elsif(letter == "z")
        "b"
  else
      letter
  end
}

p consonant_change

# Join the characters back into a string
newname = consonant_change.join("")

p newname

# Capitalize the first character of each name
capitalized_name = newname.split.map { |i| i.capitalize }.join(' ')

# Assign final alias_name variable to the capitalized name.
alias_name = capitalized_name

p alias_name

names << alias_name

puts "The spy #{full_name} now has an encrypted name of #{alias_name}"

end

p names
