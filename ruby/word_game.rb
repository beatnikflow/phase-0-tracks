# PSEUDOCODE DESIGN - GAME CLASS
# —————————————————

# - Create a class for a word-guessing game called WordGame

# - Define initialize method that takes in a parameter (game_word)

#   - On initialization method give game_word.downcase the instance variable of @word.

#   - Create an @guesses instance variable with an array.

#   - Create an @attempts_remaining instance variable that is equal to the length of the game_word

# - Define a guess_the_word method that takes in a parameter (word_guess)

#   - Split the word using .each and a do block to iterate and examine each letter.

#   - Use an if statement to see if any letters in the game word are equal to the guess letters in @guesses.

#   - If guessed letters are equal to letters in the game word, that letter is printed after joining the array back together.

#   - If game word doesn’t include the letter guessed, print a statement that says “Nope, guess again…” and set the attempts_remaining instance variable to count down.

# - Define a win method that checks to see if guesses do NOT include “_” (If the word has been guessed, there are no more blank spaces)

# - Define a lose method that if @attempts_remaining == 0, a statement is printed that the player has lost.

# - Driver Code and User Interface:

#   - Put a statement that welcomes the players to the word game

#   - Put a statement that asks Player 1 to enter a word for player 2 to guess. Game_word is accepted using gets.chomp

#   - Initialize class game = WordGame.new(game_word)

#   - Create an empty array of guessed_letters
#   - Create an until loop

#     - Until attempts_remaining == 0, the player continues to guess a letter.

#     - If the letter has already been guessed, print a statement that tells the user they already guessed the letter.

#     - Shovel the letter guess into the guessed_letters array.

#     - Call the guess_the_word method on letter guess.

#     - If game is won or lost, break the loop.

# -------------------------------------------------

class WordGame

  def initialize(game_word)
      @word = game_word.downcase
      @guesses = ["_"] * @word.size
      @attempts_remaining = game_word.length - 2
  end


  def guess_the_word(word_guess)
    word_guess.downcase
    @word.split("").each_with_index do |word_letter, index|
        if word_guess == word_letter
          @guesses[index] = word_guess
          p @guesses.join(" ")
        end

    end

    if !@word.include? (word_guess)
        puts "Nope, guess again..."
        @attempts_remaining -= 1
    end
  end


  def win?
    if !@guesses.include? ('_')
        puts "Congratulations!!! You WON!!! You are the WORD MASTER!!!"
        true
    else
        false
    end
  end

  def lose?
    if @attempts_remaining == 0
        puts "Just kidding... You lose!! (Word of Advice: Don't audition for Wheel of Fortune)"
        true
    end
  end

end

# -------------
# DRIVER CODE #
# -------------

puts "Welcome to the Word Guessing Game! Let's see if YOU have what it TAKES!!!"
puts "Player 1... please enter a word for Player 2 to guess!"
puts ">>"

game_word = gets.chomp

game = WordGame.new(game_word)

guessed_letters = []

  until @attempts_remaining == 0
    puts "Ok Player 2, Guess a letter! GO!!!"
     letter_guess = gets.chomp
        if guessed_letters.include? letter_guess
          puts "You already guessed that letter! Enter a new one."
          # I tried to add one back to the attempts_remaining but was unable to do so using the code below, and was unable to figure it out.
          # @attempts_remaining == @attempts_remaining += 1
        end
    guessed_letters << letter_guess
    game.guess_the_word(letter_guess)
    if game.win? || game.lose?
      break
    end
  end

