# 3. Write out pseudo-code (both casual and formal) for a method that takes an array of integers, and returns a new array with every other element.

=begin
Informal

  - initialize a new empty array
  - interate through the given array
  - if index position is even, add to new array
  - if index position is odd, skip 
  - print new array


Formal

START

  SET every_other = []

  use every_other.each_index to iterate through array
    
    IF index % 2 == 0
      .push to every_other 
    ELSE
      skip

  PRINT every_other

  END
=end
