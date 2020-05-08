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
    expect(checker.check_actual_words).to eq(false)
  end

  it("gives message when 2 words are not letters") do
    checker = Anagrams_Checker.new("^730@! ?>,", "Hello")
    expect(checker.check_actual_words).to eq(false)
  end

  it("gives message when inputs do not have vowels and actually words") do
    checker = Anagrams_Checker.new("qws", "wsd")
    expect(checker.check_actual_words).to eq(false)
  end

  it("gives message when inputs do not have vowels and actually words") do
    checker = Anagrams_Checker.new("cat", "wsd")
    expect(checker.check_actual_words).to eq(false)
  end

  it("compares if 2 words has the exact same letters") do
    checker = Anagrams_Checker.new("Tea", "Eat")
    expect(checker.compare_words).to eq("These words are anagrams.")
  end

  it("compares if 2 words has different letters") do
    checker = Anagrams_Checker.new("Tea", "cat")
    expect(checker.compare_words).to eq("These words have no letter matches and are antigrams.")
  end
  
  it("gives message when inputs are not actually words") do
    checker = Anagrams_Checker.new("qw$%[", "wsd")
    expect(checker.compare_words).to eq("You need to input actual words!")
  end

  it("gives message when inputs have the same letters") do
    checker = Anagrams_Checker.new("cat tab eww.", "tac bat eww")
    expect(checker.compare_words).to eq("These words are anagrams.")
  end

  it("gives message when inputs are not actually words") do
    checker = Anagrams_Checker.new("qw$%[", "wsd")
    expect(checker.compare_words).to eq("You need to input actual words!")
  end
  

end