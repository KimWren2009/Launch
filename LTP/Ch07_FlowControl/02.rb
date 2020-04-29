puts "What did you say, hun?"

count = 0

while true
  answer = gets.chomp
  break if count == 2
  if 
    answer != answer.upcase
    puts "HUH?!? SPEAK UP, SONNY!"
    count = 0
  elsif 
    answer == answer.upcase && answer != 'BYE'
    year = 1930 + rand(20)
    puts "NO, NOT SINCE #{year}!"
    count = 0
  elsif
    answer == 'BYE'
    puts "WHAT'S THAT???"
    count += 1
  end
end

puts "BYE, HUN!"