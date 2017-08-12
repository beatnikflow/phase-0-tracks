
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

    puts str
    str
end


#encrypted_str = encrypt()

def decrypt(new_str)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < new_str.length
    new_str[index] = alphabet.index(new_str[index]).to_s
    new_str[index] = alphabet[new_str[index].to_i - 1]
    index +=1
  end
  puts new_str
  new_str
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")



