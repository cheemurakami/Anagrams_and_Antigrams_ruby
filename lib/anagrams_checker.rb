class Anagrams_Checker

  attr_reader(:word1, :word2)
  def initialize (word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end
  
  def check_actual_words
    word1arr = word1.split("").sort
    word2arr = word2.split("").sort
    vowels = ["a", "e", "i", "o","u","y"]
    if !word1.match(/^[[:alpha:][:blank:]]+$/) || !word2.match(/^[[:alpha:][:blank:]]+$/) || word1arr & vowels == [] || word1arr & vowels == []
    end
      "You need to input actual words!"
  end

  def compare_words
    word1arr = word1.split("").sort
    word2arr = word2.split("").sort
    if word1arr === word2arr
      return "2 words have the same letters"
    else
      "These words have no letter matches and are antigrams."
    end
  end


end