# frozen_string_literal: true

def group_by_initial(words)
  words.select { |elm| elm.length.positive? }.group_by { |word| word[0].upcase }
end
