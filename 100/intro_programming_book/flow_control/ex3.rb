# ex3.rb
# exercise 3

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i
case
when number < 0
  puts "You entered a negative number" 
when number < 51
  puts "#{number} is between 0 and 50"
when number < 101
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end