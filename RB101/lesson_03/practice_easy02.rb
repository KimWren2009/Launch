=begin

Question 1

In this hash of people and their age, see if "Spot" is present
Bonus: What are two other hash methods that would work just as well for this solution?

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?('Spot')
ages.has_key?('Spot')
ages.member?('Spot')
ages.include?('Spot')

-----

Question 2


Convert the string in the following ways (code will be executed on original munsters_description above):

munsters_description = "The Munsters are creepy in a good way."

SOLUTIONS
munsters_description.swapcase
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY." <= .swapcase
"The munsters are creepy in a good way." <= .capitalize
"the munsters are creepy in a good way." <= .downcase
"THE MUNSTERS ARE CREEPY IN A GOOD WAY." <= .upcase

-----

Question 3
We have most of the Munster family in our age hash: 
add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

SOLUTION
ages.merge!(additional_ages)

-----

Question 4

See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

SOLUTION
advice.match?("Dino")

-----

Question 5

Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

SOLUTION
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

-----

Question 6

How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << 'Dino'

-----

Question 7 

In the previous practice problem, we could have used either Array#concat or Array#push to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

-----

Question 8 

Shorten this sentence...remove everything starting from "house".

Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?

SOLUTIONS 
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as")
advice.slice!(0, advice.index('house'))

-----

Question 9

Write a one-liner to count the number of lower-case 't' characters in the following string:

SOLUTION
statement = "The Flintstones Rock!"
statement.count("t")

-----

Question 10

Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

SOLUTION
title.center(40)
