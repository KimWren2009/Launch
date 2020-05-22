=begin

#String Element Assignment

str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"

str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'

OR

str = str.split
str.each { |word| word.capitalize! }
str.join(" ")

=end

=begin

#Array Element Assignment

arr = [1, 2, 3, 4, 5]

#In irb or a code file use the same method to increase the value of the rest of the integers in the array by 1.

arr[0] += 1
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

=end

=begin

#Hash Element Assignment

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }

# In irb or a code file use the same method to set a value of either 'Fruit' or 'Vegetable' to each element in the hash.

hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'

=end
