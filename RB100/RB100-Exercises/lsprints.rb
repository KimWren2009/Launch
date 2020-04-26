answer = nil 

loop do
puts "How many times do want me to print 'Launch School is the best!'?"
answer = gets.chomp.to_i
  if answer >= 3
    (answer).times { puts "Launch School is the best!" }
    break
  else 
    puts "That's not enough! Enter a larger number."
  end
end 