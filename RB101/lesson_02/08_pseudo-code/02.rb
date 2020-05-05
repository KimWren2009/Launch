# 1. Write out pseudo-code (both casual and formal) for a method that returns the sum of two integers.

=begin

  - get two integers from the user
  - convert the string to integers
  - add the two integers
  - return the results

START

SET = "sum" method definition

  GET an integer from the user
  SET as num1

  GET another interger from the user
  SET num2

  Add the both numbers using .to_i

  SET answer as the returned value

PRINT answer

END
=end

def sum
  puts.("What is the first number?")
  num1 = Kernel.gets().chomp()

  puts.("What is the second number?")
  num2 = Kernel.gets().chomp()

  answer = num1.to_i + num2.to_i

  puts.("The answer is #{answer}.")
end