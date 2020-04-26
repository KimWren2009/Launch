#Write a program that checks if the sequence of 
#characters "lab" exists in the following strings.
# If it does exist, print out the word.

words = ["labratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def has_lab(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

has_lab("labratory")
has_lab("experiment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")