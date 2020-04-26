#What method could you use to find out if a Hash 
#contains a specific value in it? Write a program 
#to demonstrate this use.

animals = {
  :birds => "chirp",
  :dogs => "bark",
  :cats => "meow",
  :pigs => "oink"
}

puts "Do you have this sound?"
input = gets.chomp.to_s

if animals.has_value?(input)
  puts "yes!"
else
  puts "nope :("
end