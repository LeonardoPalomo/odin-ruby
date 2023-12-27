def caesar_cypher(words, shift)
  alphabet = ('a'..'z').to_a
  upper_alphabet = ('A'..'Z').to_a
  output = words.split('').map do |character|
    index_in_alphabet = alphabet.find_index(character)
    index_in_upper = upper_alphabet.find_index(character)
    if index_in_alphabet
      alphabet[(index_in_alphabet + shift) % alphabet.length]
    elsif index_in_upper
      upper_alphabet[(index_in_upper + shift) % alphabet.length]
    else
      character
    end
  end
  output.join
end

p caesar_cypher("What a string!", 5)