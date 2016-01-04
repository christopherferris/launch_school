# ex4.rb
# exercise 4

def countdown(start)
  puts start
  if start > 0
    countdown(start - 1)
  end
end

countdown(100)
countdown(20)