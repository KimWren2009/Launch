# Use Array#select to iterate over numbers and return
# a new array that contains only numbers divisible 
# by three. Assign the returned array to a variable n
# amed divisible_by_three and print its value using #p.

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |x|
  x % 3 == 0
end

p divisible_by_three