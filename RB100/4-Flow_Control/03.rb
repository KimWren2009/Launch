puts "Enter a number below:"
num = gets.chomp.to_i

case
when num < 50
  puts "#{num} is less than 50."
when num == 50
  puts "#{num} is equal to 50."
when num > 50 && num < 100
  puts "#{num} is between 50 and 100."
when num == 100
  puts "#{num} is equal to 100."
when num > 100
  puts "#{num} is greater than 100."
end
