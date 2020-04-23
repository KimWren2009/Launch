loop do
  puts "Do you want me to print 'somthing'? (y/n)"
  answer = gets.chomp.downcase
  if answer == 'y'  
    puts 'something' 
    break
  elsif answer == 'n'
    break
  else
    puts "Invalid input! Please respond with 'y' or 'n'"
  end
end