require("rspec")
require("anagrams_checker")
require('pry')

describe ("anagrams_checker") do
  it("is 2") do
    expect(1).to eq(1)
  end
  it("is a class") do
    checker = Anagrams_Checker.new("^730@!?>,", "47*0]")
    expect(checker.class).to eq(Anagrams_Checker)
  end
  it("gives message when 2 words are not letters") do
    checker = Anagrams_Checker.new("^730@!?>,", "47*0]")
    expect(checker.compare_words).to eq("Please enter a word only!")
  end
  it("gives message when 2 words are not letters") do
    checker = Anagrams_Checker.new("^730@! ?>,", "Hello")
    expect(checker.compare_words).to eq("Please enter a word only!")
  end
  it("compares 2 words has the exact same letters") do
    checker = Anagrams_Checker.new("Tea", "Eat")
    expect(checker.compare_words).to eq("2 words have the same letters")
  end

end