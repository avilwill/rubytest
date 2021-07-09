def longest_word(sentence)
    longest = sentence.split(" ")
   longest.each {|value| puts value.length}
end
p longest_word("Bobby loves big scary kangaroos")