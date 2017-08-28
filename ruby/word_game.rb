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

