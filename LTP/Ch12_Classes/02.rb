puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born?"
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
seconds = (Time.new - birthday)
age = seconds /  ( 60 * 60 * 24 * 365 )

puts "Cool! So your birthday is #{birthday}. And you are #{age.to_i} years old."
puts "That means you get #{age.to_i} spanks!"

puts 'SPANK!' * age.to_i