require_relative 'WordGame'

describe WordGame do
  # let(:word) { WordGame.new(game_word)}

  # it "sets the instance variable of word equal to the downcase game word" do
  #   expect(@word).to eq game_word.downcase
  # end

  it "takes the guessed word, downcases it, splits it into an array. If word guess contains any letters of game word, join back into a string and display the letter guessing progress." do
      wordgame = WordGame.new
      expect(guess_the_word(word_guess)).to eq @guesses.join(" ")
  end

end