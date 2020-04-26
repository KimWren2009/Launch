a = nil
b = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
    loop do
      puts "Insert a positive or negative integer."
      a = gets.chomp
      break if valid_number?(a)
      if 
        a == '0'
        puts "You can't use 0. Please try another number."
        next
      elsif valid_number?(a) == false
        puts "Please insert a valid number."
        next
      end
    end

    loop do
      puts "Insert another positive or negative integer"
      b = gets.chomp
      
      break if valid_number?(b)
      
      if 
        b == '0'
        puts "You can't use 0. Please try another number."
        next
      elsif valid_number?(b) == false
        puts "Please insert a valid number."
        next
      end
    end

break if (a.to_i < 0 && b.to_i > 0) || (a.to_i > 0 && b.to_i < 0)
puts "One number must be positive and one must be negative. Please try again."
end

c = a.to_i + b.to_i

puts "#{a} + #{b} = #{c}"

# Alternative 

=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"

Discussion
In this exercise we demonstrate how to handle multiple inputs that must be validated both independently and together; this is done by using a loop inside another loop (nested loops), but it is often easier to simply refactor the input loop into a separate method (or multiple methods if needed). We take this approach with our solution.

Of course, we use the provided valid_number? method for validation. This differs from the valid_number? we used previously in that it also treats 0 as an invalid entry.

Next, we have a read_number method that we use for our standard get-some-input pattern. The main difference here is that we return from the method instead of using break to exit the loop. (You can also use break number.to_i, but since we really want to return instead, we use return.)

We then initialize our two input variables, then start a loop that reads each of the 2 numbers, then exits if their product is negative, or issues an error message and repeats the loop if the product is positive. Note that the product is negative if and only if one number is positive, the other negative, so this satisfies our requirement that one number be positive, the other negative.

Finally, we add the two numbers together and print the result.

=end