#Using some of Ruby's built-in Hash methods, 
#write a program that loops through a hash and 
#prints all of the keys. Then write a program 
#that does the same thing except printing the 
#values. Finally, write a program that prints 
#both.

animals = {
  :birds => "chirp",
  :dogs => "bark",
  :cats => "meow",
  :pigs => "oink"
}

names = animals.each_key { |name| puts name }

sounds = animals.each_value { |sound| puts sound }

both = animals.each { |k, v| puts "#{k} make the sound '#{v}'" }