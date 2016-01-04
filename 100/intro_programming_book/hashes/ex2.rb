# ex2.rb
# Exercise 2

# merge returns a new hash combining the contents of two hashes together. 
# merge! adds the contents of one hash to another. merge! also mutates the
# caller while merge does not.

animal_years = { "dog" => 10, "pig" => 15, "cat" => 100}
human_years = { "Bob" => 50, "Steve" => 25}
animal_years.merge(human_years)
p animal_years
p human_years
animal_years.merge!(human_years)
p animal_years
p human_years