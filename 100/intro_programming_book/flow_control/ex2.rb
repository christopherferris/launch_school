# ex2.rb
# exercise 2

def caps_lock(string)
  if string.length > 10
    string.upcase + "!"
  else
    string
  end
end

puts "hello how are you doing today?"
puts caps_lock("i said hello how are you doing today?")