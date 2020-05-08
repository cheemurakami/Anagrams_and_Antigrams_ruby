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
    if word1.match(/[^A-Za-z]/) || word2.match(/[^A-Za-z]/) || word1arr & vowels == [] || word2arr & vowels == []
      return "You need to input actual words!"
    else
      "Those are words."
    end
  end

  def compare_words
    word1arr = word1.gsub(/[^A-Za-z]/, '').split("").sort
    word2arr = word2.gsub(/[^A-Za-z]/, '').split("").sort
    if word1arr === word2arr
      return "2 words have the same letters"
    else
      "These words have no letter matches and are antigrams."
    end
  end


end