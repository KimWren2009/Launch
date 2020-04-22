# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

array = ['Kim', 'Chris', 'Patrick', 'Morgan']

array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }