=begin
Question 1

What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
1
2
2
3

-----

Question 2

Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

  what is != and where should you use it? 
    <= 'not equal' evaluation
  put ! before something, like !user_name 
    <= !<some object> is used to turn any object into the opposite of their boolean equivalent
  put ! after something, like words.uniq! 
    <= typically indicates a method that modifies the caller
  put ? before something
    <= terinary operator Ex. 1 + 2 == 3 ? puts 'yes' : puts 'no'
  put ? after something
   <= typically indicates a method that will return a Boolean value
  put !! before something, like !!user_name
    <= !!<some object> is used to turn any object into their boolean equivalent.

-----
Question 3

Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

-----

Question 4

numbers = [1, 2, 3, 4, 5]

What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
  <= deletes the element at index position 1, "2"
numbers.delete(1)
  <= deletes the element 1 (index 0)

-----

Question 5

Programmatically determine if 42 lies between 10 and 100.

number = 42
range = (10..100)

range.include?(number)

OR 

(10..100).cover?(42)

-----

Question 6
Starting with the string:

famous_words = "seven years ago..."
prepend = "Four score and "

show two different ways to put the expected "Four score and " in front of it.

Solution 1
famous_words.prepend("Four scores and ")

Solution 2
famous_words = prepend + famous_words

Solution 3
"Four score and " << famous_words

-----

Question 7
If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
Make this into an un-nested array.

flintstones.flatten!

-----

Question 8
Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc('Barney')

