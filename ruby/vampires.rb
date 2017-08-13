lovesgarlicbread = true
wantsinsurance = true
age = true

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
    else
      age == false
      puts "Something doesn't add up here..."
    end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
  garlicbread = gets.chomp
    if garlicbread = "Y"
      garlicbread == lovesgarlicbread
    else garlicbread == false
      garlic bread == hatesgarlicbread
    end

puts "Would you like to enroll in the company’s health insurance? (Y/N)"
  insurance = gets.chomp
    if insurance = "Y"
      insurance == wantsinsurance
    else insurance == false
      insurance == waivesinsurance
    end

  if age && (lovesgarlicbread || wantsinsurance )
    puts "Probably not a vampire"

  elsif age == false && !(lovesgarlicbread || wantsinsurance)
    puts "Probably a vampire!"

  elsif age == false && !(lovesgarlicbread && wantsinsurance)
    puts "Almost certainly a vampire!"

  else
    puts "Results inconclusive!"
  end
