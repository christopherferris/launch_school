# ex3.rb
# Exercise 3
# Common crypto currencies and their creators

crypto_currency = { "Bitcoin" => "Satoshi Nakamoto", "Dogecoin" => "Billy Markus", 
  "Litecoin" => "Sunny King", "Dash" => "Evan Duffield & Kyle Hagan" }
crypto_currency.each_key { |k| puts k }
crypto_currency.each_value { |v| puts v }
crypto_currency.each { |k,v| puts "#{k} was created by #{v}" }