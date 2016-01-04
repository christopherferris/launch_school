# ex2.rb
# exercise 2

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# It will print nothing
# It will return a Proc object