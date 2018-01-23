require 'byebug'
#Reverse individual words in a string without reversing whole string
#'hi my name is paul' => 'ih ym eman si luap'

def reverse_word(word)
  new_word = []
  word.chars.each do |chr|
    new_word.unshift(chr)
  end
  new_word.join("")

end

def reverse_words_in_string(string)
  words = string.split(" ")

  reversed_words = []
  words.each do |word|
    reversed_words << reverse_word(word)
  end

  reversed_words.join(" ")
end


p reverse_words_in_string("hi my name is paul")
