class WordGame
  def initialize(game_word)
    @word = game_word.downcase
    @guesses = [" "] * @word.size
    @attempts_remaining = game_word.length - 2
  end

end