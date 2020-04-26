PASSWORD = "please"
USERNAME = "Bob"

loop do
  puts "Please enter your username:"
  username = gets.chomp

  puts "Please enter your password"
  password = gets.chomp

  break if password == PASSWORD && username == USERNAME 
  puts "Invalid authorization. Please try again."

end

puts "You did it! Welcome!"
