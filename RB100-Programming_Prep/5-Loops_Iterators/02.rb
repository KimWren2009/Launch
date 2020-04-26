# Write a while loop that takes input from the 
# user, performs an action, and only stops when 
# the user types "STOP". Each loop can get info 
# from the user.

x = ''

while x != 'STOP' do
  puts "Let's go for a loop! Type anything below."
  answer = gets.chomp
  puts "Thanks for your response! Let's go for a loop! Type anything below. Type 'STOP' to end."
  x = gets.chomp
end

puts "Thanks for playing!"
