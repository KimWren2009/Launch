# Write a program that asks the user for their 
# age in years, and then converts that age to months.

puts "How old are you?"
years = gets.chomp.to_i
months = years * 12

puts "You are #{months} months old."