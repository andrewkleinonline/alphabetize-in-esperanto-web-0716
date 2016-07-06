require 'pry'

def alphabetize(arr)
  # code here

  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  #binding.pry
  alphabet_order = Hash.new
  esperanto_alphabet.each_with_index { |letter, index| alphabet_order[letter] = index}
  alphabet_order[" "] = -1
  
  get_letter = alphabet_order.invert

  numerized_pairs = Hash.new

  arr.each_with_index do |word|
    letters = word.split("")
    numerized_word = []

    letters.each do |letter|
      numerized_letter = alphabet_order[letter]
      numerized_word << numerized_letter
    end

    numerized_pairs[word] = numerized_word
  end
  #binding.pry

  inv_numerized_pairs = numerized_pairs.invert
  
  sorted_numerized = numerized_pairs.values.sort { |word1, word2| word1 <=> word2}

  sorted_words = []

  sorted_numerized.each do |word|
    sorted_words << inv_numerized_pairs[word]
  end
  
  #binding.pry
  sorted_words

end