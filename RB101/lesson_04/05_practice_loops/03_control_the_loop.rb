# Modify the following loop so it iterates 5 times instead of just once.

# PROBLEM

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break
# end

# SOLUTION

iterations = 5

loop do
  puts "Number of iterations = #{iterations}"
  iterations -= 1
  break if iterations == 0
end