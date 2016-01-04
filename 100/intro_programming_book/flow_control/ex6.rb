# ex6.rb
# exercise 6

# 6. The error is because the if/else conditional statement is missing an 
# end. You can fix the code by closing the if..else statement with an end:

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)