def substrings(phrase, dictionary)
  occurrences = []
  dictionary.each do |word|
    occurrences.push(phrase.downcase.scan(word))
  end
  occurrences.flatten.tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
