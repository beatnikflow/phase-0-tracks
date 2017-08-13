def vampdetection

  puts "What is your name?"
    name = gets.chomp

  puts "How old are you?"
    age = gets.chomp
    age = age.to_i

  puts "What year were you born?"
    year = gets.chomp
    year = year.to_i
      if age == 2017 - year
         age == true
      else age == false
        puts "Something doesn't add up here..."
      end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
    garlicbread = gets.chomp
      if garlicbread = "Y"
        garlicbread == true
      else garlicbread == false
      end

  puts "Would you like to enroll in the company’s health insurance? (Y/N)"
    insurance = gets.chomp
      if insurance = "Y"
        insurance == true
      else insurance == false
      end

  if age == true && (garlicbread || insurance )
    puts "Probably not a vampire"
  else
    puts "Definitely a vampire!"
  end

end

