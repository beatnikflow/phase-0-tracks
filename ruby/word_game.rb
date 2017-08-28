class WordGame
  def initialize(game_word)
    @word = game_word.downcase
    @guesses = [" "] * @word.size
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

