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

START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  set largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false
  IF keep_going == false
    exit the loop

PRINT large_numbers
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