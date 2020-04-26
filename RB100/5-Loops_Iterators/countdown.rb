# WHILE LOOP

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refectored this line
end

puts "Done!"

# same program as an UNTIL LOOP

x = gets.chomp.to_i
until x < 0
  puts x
  x -= 1
end

puts "Done!"