# ex2.rb
# exercise 2

loop do
  puts "What is your name?"
  name = gets.chomp
  puts "Hi Chris"
  puts "When do you want to STOP?"
  answer = gets.chomp
  if answer == 'STOP'
    break
  end
end
