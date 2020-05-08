require("rspec")
require("anagrams_checker")
require('pry')

describe ("anagrams_checker") do
  it("is 2") do
  expect(1).to eq(1)
  end
  it("is a class") do
    checker = Anagrams_Checker.new
  expect(checker.class).to eq(Anagrams_Checker)
  end
  it("gives message when 2 words are not letters") do
    checker = Anagrams_Checker.new
  expect(checker.compare_words("^730@!?>,", "47*0]")).to eq("Please enter a word only!")
  end
  it("gives message when 2 words are not letters") do
    checker = Anagrams_Checker.new
  expect(checker.compare_words("^730@!?>,", "Hello")).to eq("Please enter a word only!")
  end
end