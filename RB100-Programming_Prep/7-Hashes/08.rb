#Write a program that prints out groups of words 
#that are anagrams. Anagrams are words that have 
#the same exact letters in them but in a different 
#order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# iterate over array
# sort each word into alpha order
# if key exist, append current word into value (array)
#otherwise, create a new key with thei sorted word

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "_______"
  p v
end