# Modify the code below so the loop stops iterating when the user inputs 'yes'.

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
# end

# SOLUTION

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
  puts "If you want me to stop, type 'yes'."
end