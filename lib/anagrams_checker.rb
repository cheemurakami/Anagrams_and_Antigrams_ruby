class Anagrams_Checker

  attr_reader(:word1, :word2)
  def initialize (word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def compare_words
    word1arr = word1.split("").sort
    word2arr = word2.split("").sort
    if !word1.match(/^[[:alpha:][:blank:]]+$/) || !word2.match(/^[[:alpha:][:blank:]]+$/)
      return "Please enter a word only!"
    elsif word1arr === word2arr
      "2 words have the same letters"
    end
  end

end