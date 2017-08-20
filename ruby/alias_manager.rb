# Take a spy's real name and write a method that cretes a fake name by doing the following:

#     - Swapping first and last name.

#     - Changing all of the vowels (aeiou) to the next vowel in 'aeiou' (eioua), and all of the consonants to the next consonant in the alphabet.

# -------------------------------------------------------- #

# ALGORITHM #

# 1. Define a method that will swap words in a user input string.

# 2. Prompt user for name

# 3. Name string words will be swapped by reverse method.

# 4. Define a method that takes reversed name string and changes vowels to the next successive vowel.

# 5. Define a method that takes reversed name string with modified vowels and change consonants to the next successive consonant.

# -------------------------------------------------------- #

puts "Hello SPY! What is your REAL name?"
spyname = gets.chomp

def reverse(string)
    reverse = ""
    index = 0
    while index < string.length
       reverse = string[index] + reverse
       index += 1
    end
    return reverse
end

reverse_sent = reverse(spyname)
reverse_sent.split.map {|word| reverse(word)}.join(" ")


def vowelreplace(full_name)
  vowels = 'aeiou'
  replacements = 'eioua'
  full_name.tr(vowels, replacements)
end

name_no_vowels = vowelreplace(full_name)

p name_no_vowels

def consonantreplace(name_no_vowels)
  consonants = 'bcdfghjklmnpqrstvwxyz'
  replacements = 'cdfghjklmnpqrstvwxyzb'
  name_no_vowels.tr(consonants, replacements)
end

new_spyname = consonantreplace(name_no_vowels)

p new_spyname


