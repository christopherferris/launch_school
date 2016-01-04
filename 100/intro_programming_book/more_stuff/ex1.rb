# ex1.rb
# exercise 1

def check_word(word)
  if word =~ /lab/
    puts word
  end
end

check_word("laboratory")
check_word("experiment")
check_word("Pans Labyrinth")
check_word("elaborate")
check_word("polar bear")