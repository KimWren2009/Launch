# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

def odd?(integer)
  integer % 2 != 0
end

odd?(3)
odd?(10)
odd?(-3)
odd?(133)
odd?(0)

def odd2?(integer)
  integer.remainder(2) != 0
end

odd2?(3)
odd2?(99)
odd2?(0)
odd2?(-10)
odd2?(-99)