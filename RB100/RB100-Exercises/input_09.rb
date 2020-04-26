number_of_lines = nil
string = nil

loop do
  puts '>> How many output lines do you want? Enter a number >= 3 or type "q" to quit:'
  string = gets.chomp. downcase
  break if string == 'q'
  
  number_of_lines = string.to_i

  if number_of_lines < 3
    puts ">> That's not enough lines."
  next
  end

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines-= 1
  end

end