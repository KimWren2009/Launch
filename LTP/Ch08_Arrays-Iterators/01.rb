words = []
puts "Let me show you my sorting skills"

while words
  puts "Type a word to add to the list:"
  answer = gets.chomp
  break if answer == ''
  words.push answer.to_s
end

puts words.sort