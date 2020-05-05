=begin
START

# Givend a collection of integers called "numbers"

SET iterator = 1 
SET saved_number = value within number collection at space 1

WHILE iterator <=length of numbers
  SET current_number = value within number collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved)number = current_number

  iterator = iterator + 1

PRINT saved_number

END
=end

def find_greatest(numbers)
  return if numbers.nil?
  saved_number = numbers.first

  numbers.each do |num|
    saved_number ||= num
    if saved_number >= num
      next
    else
      saved+number = num
    end
  end

  saved_number
end