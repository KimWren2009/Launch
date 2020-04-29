puts "Give me a starting year."
year1 = gets.chomp.to_i
puts "Give me an ending year."
year2 = gets.chomp.to_i

puts "These are all the leap years in that timeline:"
while year1 <= year2
  if year1 % 4 == 0
    puts year1 unless year1 % 100 == 0 && year1 % 400 != 0
  end
  year1 += 1
end
