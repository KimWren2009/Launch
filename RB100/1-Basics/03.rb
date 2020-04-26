=begin
Write a program that uses a hash to store a list
of movie titles with the year they came out. 
Then use the puts command to make your program 
print out the year of each movie to the screen. 
=end

movies = {
  "The Lion King" => 1994,
  "The Little Mermaid" => 1989,
  "Pocohontas" => 1995,
  "Mulan" => 1998
}

puts movies["The Lion King"]
puts movies["The Little Mermaid"]
puts movies["Pocohontas"]
puts movies["Mulan"]

#Use the dates from the previous example and 
#store them in an array. Then make your program
# output the same thing as exercise 3

movie_years = [1994, 1989, 1995, 1998]

puts movie_years[0]
puts movie_years[1]
puts movie_years[2]
puts movie_years[3]