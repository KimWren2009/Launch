# Write a program that obtains two Integers from 
# the user, then prints the results of dividing 
# the first by the second. The second number must
# not be 0, and both numbers should be validate.

a = nil
b = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts "Enter your first number:"
  a = gets.chomp

  if valid_number?(a) == false
    puts "You must insert a valid number."
  end

  break if valid_number?(a) 
end

loop do
  puts "Enter a second number greater than 0"
  b = gets.chomp
  
  if valid_number?(b) == false
    puts "You must insert a valid number."
  end

  if b == '0'
    puts "The second number cannot be 0. Please try again." 
  end

  break if b && b != '0'
end

c = a.to_f / b.to_f
puts "#{a} / #{b} = #{c}"