class Anagrams_Checker

  attr_reader(:word1, :word2)
  def initialize (word1, word2)
    @word1 = word1.downcase.gsub(/[[:punct:]]/,"").gsub(/[[:blank:]]/,"")
    @word2 = word2.downcase.gsub(/[[:punct:]]/,"").gsub(/[[:blank:]]/,"")
  end
  
  def check_actual_words
    word1arr = word1.split("").sort
    word2arr = word2.split("").sort
    vowels = ["a", "e", "i", "o","u","y"]
    if word1.match(/[^A-Za-z]/) || word2.match(/[^A-Za-z]/) || word1arr & vowels == [] || word2arr & vowels == []
      false
    else
      true
    end
  end

  def compare_words
    if check_actual_words == false
      return "You need to input actual words!"
    else
      word1arr = word1.gsub(/[^A-Za-z]/, '').split("").sort
      word2arr = word2.gsub(/[^A-Za-z]/, '').split("").sort
      if word1arr === word2arr
        "These words are anagrams."
      else
        "These words have no letter matches and are antigrams."
      end
    end
  end


  def matched_letters
    word1arr = word1.split("").sort
    word2arr = word2.split("").sort
    matched_letters = word1arr & word2arr

    matched_letters_disp = matched_letters.join(", ")

    "These words aren't anagrams but #{matched_letters.length} letters match: #{matched_letters_disp}."
  end

end