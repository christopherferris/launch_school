# calculator.rb

# ask for first number
# ask for second number
# ask for the type of operation to perform
# show the results

Kernel.puts("Welcome to calculator!")
Kernel.puts("What is the first number?")
num1 = gets().chomp()
Kernel.puts("What is your second number?")
num2 = gets().chomp()
Kernel.puts("What type of operation 1) add 2) subtract 3) multiplication 
4) division")
operation = gets().chomp()

if operation == '1'
  result = num1.to_i() + num2.to_i()
  operator = "+"
elsif operation == '2'
  result = num1.to_i() - num2.to_i()
  operator = "-"
elsif operation == '3'
  result = num1.to_i() * num2.to_i()
  operator = "*"
elsif operation == '4'
  result = num1.to_f() / num2.to_f()
  operator = "/"
end

Kernel.puts("#{num1} #{operator} #{num2} = #{result}")