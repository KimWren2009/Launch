# Given the following code, use Array#each to print 
# the plural of each word in words.

words = 'car human elephant airplane'

array = words.split

plural = array.each do |word|
          word << 's'
        end

p plural