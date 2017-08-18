# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
 => “InVeStIgAtIoN”

# Method:
  puts "iNvEsTiGaTiOn".swapcase
  => “InVeStIgAtIoN”

# ....................................... #


# "zom".<???>
# => “zoom”

# ....................................... #

 "enhance".center(15)
 => "    enhance    "

# Method:
  puts "enhance".center(15)
  => "    enhance    "


# ....................................... #

 "Stop! You’re under arrest!".upcase
 => "STOP! YOU’RE UNDER ARREST!"

# Method:
  puts "Stop! You're under arrest!".upcase
  => "STOP! YOU’RE UNDER ARREST!"


# ....................................... #

  "the usual".to_s
=> "the usual suspects"

# Method:
  new_str = "the usual"
  new_str.to_s + " suspects"
  => "the usual suspects"


# ....................................... #

 " suspects".to_s
 => "the usual suspects"

# Method:
 new_str = " suspects"
 "the usual" + new_str.to_s
 => "the usual suspects"

# ....................................... #

 "The case of the disappearing last letter".chop
 => "The case of the disappearing last lette"

# ....................................... #

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# ....................................... #

"Elementary,    my   dear        Watson!".split.join
=> "Elementary, my dear Watson!"

# Method:
  str = "Elementary,    my   dear        Watson!"
  str.split.join(" ")
  => "Elementary, my dear Watson!"

# ....................................... #

"z".ord
=> 122
# (What is the significance of the number 122 in relation to the character z?)

# Method:
"z".ord
=> 122

# ....................................... #

# "How many times does the letter 'a' appear in this string?".<???>
# => 4