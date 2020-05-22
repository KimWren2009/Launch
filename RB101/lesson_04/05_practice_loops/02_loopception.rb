# The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.

# EXAMPLE
# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#   end
# end

# puts 'This is outside all loops.'

# SOLUTION

loop do
  puts 'This in the outer loop.'

    loop do
      puts 'This is the inner loop.'
      break
    end
    
  break
end
