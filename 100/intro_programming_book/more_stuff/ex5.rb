# ex5.rb
# exercise 5

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# The execute method parameter block is missing the '&' sign.