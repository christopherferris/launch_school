# ex4.rb
# exercise 4

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
# => 3

arr.index[5]
# => NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
# from (irb):3
# from /usr/local/bin/irb:11:in `<main>'

arr[5]
# => 8