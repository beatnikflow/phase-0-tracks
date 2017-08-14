


puts "What is your name?"
  name = gets.chomp

puts "How old are you?"
  age = gets.chomp
  age = age.to_i


puts "What year were you born?"
  year = gets.chomp
  year = year.to_i
    if age == 2017 - year
       age = true
    else
      age = false
      puts "Something doesn't add up here..."
    end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
  lovesgarlicbread = gets.chomp
    if lovesgarlicbread == "Y"
      lovesgarlicbread = true
    else lovesgarlicbread = false
    end

puts "Would you like to enroll in the company’s health insurance? (Y/N)"
  wantsinsurance = gets.chomp
    if wantsinsurance == "Y"
      wantsinsurance = true
    else wantsinsurance = false
    end

  if age && (lovesgarlicbread || wantsinsurance)
    puts "Probably not a vampire"

  elsif age = false && (lovesgarlicbread = false || wantsinsurance = false)
    puts "Probably a vampire"

  elsif age = false && (lovesgarlicbread = false && wantsinsurance = false)
    puts "Almost certainly a vampire!"

  elsif name = "Drake Cula" || "Tu Fang"
    puts "Definitely a vampire!"

  else
    puts "Results inconclusive!"
  end


