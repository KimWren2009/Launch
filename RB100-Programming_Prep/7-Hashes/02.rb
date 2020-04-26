#Look at Ruby's merge method. Notice that it has 
#two versions. What is the difference between 
#merge and merge!? Write a program that uses 
#both and illustrate the differences.

hash1 = { 
  a: 1, b: 2, c: 3, d: 4 
}
hash2 = {
  e: 5, f: 6, g: 7, h: 8 
}

#merge with .merge method

hash3 = hash1.merge(hash2)

puts "The new, merged hash is: #{hash3}"
puts "But the original hash is unchanged: #{hash1}"

hash4 = hash1.merge!(hash2)
puts "The new, combined hash is #{hash4}"
puts "And the original hash is permenately changed #{hash1}"