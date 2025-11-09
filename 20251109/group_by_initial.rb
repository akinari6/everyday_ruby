# frozen_string_literal: true

def group_by_initial(words)
  words
    .reject(&:empty?)
    .group_by { |word| word[0].upcase }
end
