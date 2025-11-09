def group_by_initial(words)
  words.group_by { |word| word[0].upcase }
end
