# Write a program that displays a welcome message,
# but only after the user enters the correct 
# password, where the password is a string that 
# is defined as a constant in your program. Keep 
# asking for the password until the user enters 
# the correct password.

PASSWORD = "please"

loop do
  puts "Please enter the secret word:"
  password = gets.chomp
  break if password == PASSWORD
  puts "That the wrong password. Please try again."
end

puts "You did it!"
