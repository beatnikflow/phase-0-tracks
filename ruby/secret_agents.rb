# encrypts a string but replacing each letter with that letter's successor in the alphabet
def encrypt(str)
  index = 0
  while index < str.length
    if str[index] != "z"
      str[index] = str[index].next!
      index +=1
    else
      str[index] = "a"
      index +=1
    end
  end
  puts "Congrats!!! Your password has been encrypted: #{str}"
  str
end

# decrypts a string by replacing each letter with that letter's predecessor in the alphabet
def decrypt(new_str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < new_str.length
    letter_index = alphabet.index(new_str[index])
    new_str[index] = alphabet[letter_index - 1]
    index +=1
  end
  puts "Congrats!!! Your password has been decrypted: #{new_str}"
  new_str
end

# A few tests below...
# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish")) # This nested method takes the output of the encrypt method ("txpsegjti") as the argument for the decrypt method...returning the original argument string "swordfish"

# Driver code below...
puts "Would you like to encrypt or decrypt a password? Type 'encrypt' or 'decrypt' below:"
user_choice = gets.chomp
if user_choice == "encrypt"
  puts "Great! Please type the password you'd like us to encrypt:"
  password_to_encrypt = gets.chomp
  encrypt(password_to_encrypt)
else
  puts "Great! Please type the password you'd like us to decrypt:"
  password_to_decrypt = gets.chomp
  decrypt(password_to_decrypt)
end