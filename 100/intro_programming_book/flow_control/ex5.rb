# ex5.rb
# exercise 5

def evaluate_num(number)
  if number < 0
    puts "You entered a negative number"
  elsif number < 51
    puts "#{number} is between 0 and 50"
  elsif number < 101
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

def evaluate_case_num(number)
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
end

def evaluate_case2_num(number)
  case number
  when 0..50
    puts "#{number} is between 0 and 50"
  when 51..100
    puts "#{number} is between 51 and 100"
  else
    if number < 0
      puts "You can't enter a negative number!"
    else
      puts "#{number} is above 100"
    end
  end
end

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case_num(number)
evaluate_case2_num(number)
