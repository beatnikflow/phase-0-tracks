# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
 => “InVeStIgAtIoN”

  puts "iNvEsTiGaTiOn".swapcase

# ....................................... #


# "zom".<???>
# => “zoom”

# ....................................... #

 "enhance".center(15)
 => "    enhance    "


  puts "enhance".center(15)


# ....................................... #

 "Stop! You’re under arrest!".upcase
 => "STOP! YOU’RE UNDER ARREST!"


  puts "Stop! You're under arrest!".upcase


# ....................................... #

  "the usual".to_s
=> "the usual suspects"


  new_str = "the usual"
  new_str.to_s + " suspects"


# ....................................... #

 " suspects".to_s
 => "the usual suspects"

 new_str = " suspects"
 "the usual" + new_str.to_s

# ....................................... #

 "The case of the disappearing last letter".chop
 => "The case of the disappearing last lette"

# ....................................... #

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# ....................................... #

"Elementary,    my   dear        Watson!".split.join
=> "Elementary, my dear Watson!"

str = "Elementary,    my   dear        Watson!"
str.split.join(" ")

# ....................................... #

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)

# ....................................... #

# "How many times does the letter 'a' appear in this string?".<???>
# => 4