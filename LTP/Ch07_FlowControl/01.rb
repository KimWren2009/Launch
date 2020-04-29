bottles = 99

while bottles > 1
  puts "#{bottles} bottles of beer on the wall. #{bottles} bottles of beer. You take one, down pass it around. #{bottles -1 } bottles of bear on the wall." 
  bottles -= 1
  if bottles == 1
    puts "#{bottles} bottle of beer on the wall. #{bottles} bottle of beer. You take one, down pass it around. No more bottles of beer on the wall!" 
  end
end
